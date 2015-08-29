cask :v1 => 'charles-beta' do
  version '3.11b3'
  sha256 '1254a2c397b5e6a9124103955830b150a2828a5f07c7ebc78a787f74809cf972'

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
