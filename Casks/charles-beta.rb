cask 'charles-beta' do
  version '3.11.5b3'
  sha256 'fc7483127079b9d2af98fd5a9cfea5fcfb5787740b4a3c311e40596139d32d7b'

  url "https://www.charlesproxy.com/assets/release/#{version.gsub(%r{b\d$}, '')}/charles-proxy-#{version}.dmg"
  name 'Charles'
  homepage 'https://www.charlesproxy.com/download/beta/'
  license :commercial

  app 'Charles.app'

  zap delete: [
                '~/Library/Application Support/Charles',
                '~/Library/Preferences/com.xk72.charles.config',
              ]
end
