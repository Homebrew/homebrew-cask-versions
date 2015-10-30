cask :v1 => 'charles-beta-applejava' do
  version '3.11.2b3'
  sha256 '733dcae43c8268f308e9ad0fc50d08bb836a8480c428fa29554489d569724401'

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
