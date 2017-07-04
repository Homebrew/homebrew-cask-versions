cask 'charles-applejava' do
  version '3.11.7'
  sha256 '2be119ba0b120b9fbb600250f252ea7543848a15940f160c55ba2dc88bc1687b'

  url "https://www.charlesproxy.com/assets/release/#{version.gsub(%r{b\d$}, '')}/charles-proxy-#{version}-applejava.dmg"
  name 'Charles'
  homepage 'https://www.charlesproxy.com/download/'

  app 'Charles.app'

  zap delete: [
                '~/Library/Application Support/Charles',
                '~/Library/Preferences/com.xk72.charles.config',
              ]
end
