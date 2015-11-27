cask :v1 => 'charles-beta' do
  version '3.11.3b1'
  sha256 '0042b72e9b63f981a5efc08f90bdee2dfea983a02208c25583d2f88b01b13d1f'

  url "http://www.charlesproxy.com/assets/release/#{version.gsub(/b\d$/, '')}/charles-proxy-#{version}.dmg"
  name 'Charles'
  homepage 'http://www.charlesproxy.com/download/beta/'
  license :commercial

  app 'Charles.app'

  zap :delete => [
                  '~/Library/Application Support/Charles',
                  '~/Library/Preferences/com.xk72.charles.config',
                 ]
end
