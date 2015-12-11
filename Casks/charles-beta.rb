cask :v1 => 'charles-beta' do
  version '3.11.3b4'
  sha256 '130488d58c62f2f42d1e96ed6ea28e560d22517fe5982e49d33db65c0aa50cfe'

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
