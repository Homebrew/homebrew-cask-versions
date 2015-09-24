cask :v1 => 'firefox-ru' do
  version '41.0'
  sha256 '36dbcc85a9271e2982448a2e8a330cd147c5be77e22da0a664e0e2cf5106025f'

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
