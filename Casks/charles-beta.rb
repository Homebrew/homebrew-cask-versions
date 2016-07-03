cask 'charles-beta' do
  version '3.11.6b2'
  sha256 'd27e33aefaa4fd627870ca84a44309a7d95ac9b4ddbf99b43d16a2f6dd835bfc'

  url "https://www.charlesproxy.com/assets/release/#{version.gsub(%r{b\d$}, '')}/charles-proxy-#{version}.dmg"
  name 'Charles'
  homepage 'https://www.charlesproxy.com/download/beta/'
  license :commercial

  app 'Charles.app'

  zap delete: [
                '~/Library/Application Support/Charles',
                '~/Library/Preferences/com.xk72.charles.config',
              ]
end
