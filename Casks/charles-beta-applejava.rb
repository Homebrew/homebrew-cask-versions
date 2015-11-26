cask :v1 => 'charles-beta-applejava' do
  version '3.11.3b1'
  sha256 '6c0feb19c5109bcd45857629276920f4e3614a40b444d7470d5ebf4ae007a0d0'

  url "http://www.charlesproxy.com/assets/release/#{version.gsub(/b\d$/, '')}/charles-proxy-#{version}-applejava.dmg"
  name 'Charles'
  homepage 'http://www.charlesproxy.com/download/beta/'
  license :commercial

  app 'Charles.app'

  zap :delete => [
                  '~/Library/Application Support/Charles',
                  '~/Library/Preferences/com.xk72.charles.config',
                 ]
end
