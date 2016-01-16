cask 'charles-beta' do
  version '3.11.3b5'
  sha256 'ef1215db67aaede00dc61b260d79a051efdc32e0760b9c9f87d1155082705d85'

  url "https://www.charlesproxy.com/assets/release/#{version.gsub(/b\d$/, '')}/charles-proxy-#{version}.dmg"
  name 'Charles'
  homepage 'https://www.charlesproxy.com/download/beta/'
  license :commercial

  app 'Charles.app'

  zap :delete => [
                  '~/Library/Application Support/Charles',
                  '~/Library/Preferences/com.xk72.charles.config',
                 ]
end
