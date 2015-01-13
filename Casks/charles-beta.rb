cask :v1 => 'charles-beta' do
  version '3.10b6'
  sha256 'a8c59900a81299a40751837029c5cab41810f5527d7186da244572b676c18606'

  url "http://www.charlesproxy.com/assets/release/#{version.gsub(/b\d$/, '')}/charles-proxy-#{version}-applejava.dmg"
  homepage 'http://www.charlesproxy.com/download/beta/'
  license :commercial

  app 'Charles.app'

  zap :delete => [
                  '~/Library/Application Support/Charles',
                  '~/Library/Preferences/com.xk72.charles.config',
                 ]
end
