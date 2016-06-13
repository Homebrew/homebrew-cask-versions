cask 'charles-applejava' do
  version '3.11.5'
  sha256 '9be85ac92cf96d6f47bc60955d21699cd9699e744e7dc4a7d379a3fe24afe287'

  url "https://www.charlesproxy.com/assets/release/#{version.gsub(%r{b\d$}, '')}/charles-proxy-#{version}-applejava.dmg"
  name 'Charles'
  homepage 'https://www.charlesproxy.com/download/'
  license :commercial

  app 'Charles.app'

  zap delete: [
                '~/Library/Application Support/Charles',
                '~/Library/Preferences/com.xk72.charles.config',
              ]
end
