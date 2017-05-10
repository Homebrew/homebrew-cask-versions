cask 'charles-beta' do
  version '4.1.2b5'
  sha256 'f558ca4d2f3ff914ab18fc9d454799f1119a3f9670ca5798f2adb25f2dddbddd'

  url "https://www.charlesproxy.com/assets/release/#{version.gsub(%r{b\d$}, '')}/charles-proxy-#{version}.dmg"
  name 'Charles'
  homepage 'https://www.charlesproxy.com/download/beta/'

  depends_on macos: '>= :lion'

  app 'Charles.app'

  zap delete: [
                '~/Library/Application Support/Charles',
                '~/Library/Preferences/com.xk72.charles.config',
              ]
end
