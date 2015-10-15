cask :v1 => 'firefox-ru' do
  version '41.0.2'
  sha256 '511c3edee2a49de1d09617ac48eb2035fbaf8cd69f12ba7b5edbeb05187a2ca0'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ru"
  name 'Firefox'
  homepage 'https://www.mozilla.org/ru/firefox/desktop'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
