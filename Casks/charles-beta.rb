cask :v1 => 'charles-beta' do
  version '3.11.2b3'
  sha256 '0e6d34eaaa2abc14c7eff67045372a96f369f974a995b4aece008ba96c706b83'

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
