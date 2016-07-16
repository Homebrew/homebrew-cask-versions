cask 'charles-beta-applejava' do
  version '3.11.6b3'
  sha256 '2f005c976fd4776835122e73349df65121bc6e3b3f775e395c855b3b14e9888b'

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
