cask :v1 => 'charles-applejava' do
  version '3.11.1'
  sha256 'e3ad60e1137db64c46d2c63c1d08d29e12360de499d7b6cfba0e5b64eba7a5f5'

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
