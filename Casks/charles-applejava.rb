cask :v1 => 'charles-applejava' do
  version '3.10.2'
  sha256 'ab848f02d034860aa1ded7758c629a79dac70a79ef6b380d4d98169d36998c26'

  url "http://www.charlesproxy.com/assets/release/#{version.gsub(/b\d$/, '')}/charles-proxy-#{version}-applejava.dmg"
  homepage 'http://www.charlesproxy.com/download/'
  license :commercial

  app 'Charles.app'

  zap :delete => [
                  '~/Library/Application Support/Charles',
                  '~/Library/Preferences/com.xk72.charles.config',
                 ]
end
