cask :v1 => 'charles-beta-applejava' do
  version '3.11b2'
  sha256 'a51e64996eb5489f2bd0e460bb0c8f4565e3151067fae7b8b3a434835abe3e5e'

  url "http://www.charlesproxy.com/assets/release/#{version.gsub(/b\d$/, '')}/charles-proxy-#{version}-applejava.dmg"
  homepage 'http://www.charlesproxy.com/download/beta/'
  license :commercial

  app 'Charles.app'

  zap :delete => [
                  '~/Library/Application Support/Charles',
                  '~/Library/Preferences/com.xk72.charles.config',
                 ]
end
