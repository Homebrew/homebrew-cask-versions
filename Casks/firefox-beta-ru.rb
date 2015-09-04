cask :v1 => 'firefox-beta-ru' do
  version '41.0b6'
  sha256 'c74cb8c9b68a787444d69c198ff9f79d76cf3de11dec784ac9df285dc9cee38c'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ru"
  name 'Firefox'
  homepage 'https://www.mozilla.org/ru/firefox/channel/#beta'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
