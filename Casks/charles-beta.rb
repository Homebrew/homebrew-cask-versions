cask :v1 => 'charles-beta' do
  version '3.11.3b3'
  sha256 '973d23e85a716d5f8d897dc57ffd5843dd8949ac14978fe01e13f6a7af8de5b4'

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
