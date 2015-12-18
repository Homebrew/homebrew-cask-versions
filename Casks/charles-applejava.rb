cask 'charles-applejava' do
  version '3.11.2'
  sha256 'f6ccc84c710a982147bf5ff09c2cd8eaff74cf31668bd9f4f2b137555cae0007'

  url "http://www.charlesproxy.com/assets/release/#{version.gsub(/b\d$/, '')}/charles-proxy-#{version}-applejava.dmg"
  name 'Charles'
  homepage 'http://www.charlesproxy.com/download/'
  license :commercial

  app 'Charles.app'

  zap :delete => [
                  '~/Library/Application Support/Charles',
                  '~/Library/Preferences/com.xk72.charles.config',
                 ]
end
