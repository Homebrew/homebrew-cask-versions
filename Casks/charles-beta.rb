cask :v1 => 'charles-beta' do
  version '3.10b9'
  sha256 '35955b18774e9b278d0db7c9cd996dee9beb3990c391ae1556f3ff5ad8aa8dbc'

  url "http://www.charlesproxy.com/assets/release/#{version.gsub(/b\d$/, '')}/charles-proxy-#{version}-applejava.dmg"
  homepage 'http://www.charlesproxy.com/download/beta/'
  license :commercial

  app 'Charles.app'

  zap :delete => [
                  '~/Library/Application Support/Charles',
                  '~/Library/Preferences/com.xk72.charles.config',
                 ]
end
