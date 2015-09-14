cask :v1 => 'firefox-ru' do
  version '40.0.3'
  sha256 '83c1333bf9caa4b5618b110f5b207bf242c13ac343cae25dbf0fd548c0bb7964'

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
