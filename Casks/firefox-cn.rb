cask 'firefox-cn' do
  version '43.0.1'
  sha256 '8ada0b7847b9582ed3f2166cc98dc187bfc39d7c98d6f49a168b7342e56c124d'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-CN"
  name 'Firefox'
  homepage 'https://www.mozilla.org/zh-CN/firefox/desktop/'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
