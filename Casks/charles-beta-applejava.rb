cask :v1 => 'charles-beta-applejava' do
  version '3.11b3'
  sha256 '389607d6355a2d76018132cf3866d56f6af22bd0d8fc4f3e8bf4e1f0abaf130f'

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
