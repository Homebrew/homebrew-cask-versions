cask :v1 => 'charles-beta' do
  version '3.11b1'
  sha256 '05ebf3b95a84d16ca434d1d4611bff1373a9e90c76c8002d59607c1c78a04bed'

  url "http://www.charlesproxy.com/assets/release/#{version.gsub(/b\d$/, '')}/charles-proxy-#{version}-applejava.dmg"
  homepage 'http://www.charlesproxy.com/download/beta/'
  license :commercial

  app 'Charles.app'

  zap :delete => [
                  '~/Library/Application Support/Charles',
                  '~/Library/Preferences/com.xk72.charles.config',
                 ]
end
