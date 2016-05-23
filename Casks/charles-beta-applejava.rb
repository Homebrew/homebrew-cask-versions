cask 'charles-beta-applejava' do
  version '3.11.5b5'
  sha256 'fd524f43a4979f3ef3fba54f3dca6f3635b11d8d9a793f73500ad7fe569dd5d2'

  url "https://www.charlesproxy.com/assets/release/#{version.gsub(%r{b\d$}, '')}/charles-proxy-#{version}-applejava.dmg"
  name 'Charles'
  homepage 'https://www.charlesproxy.com/download/beta/'
  license :commercial

  app 'Charles.app'

  zap delete: [
                '~/Library/Application Support/Charles',
                '~/Library/Preferences/com.xk72.charles.config',
              ]
end
