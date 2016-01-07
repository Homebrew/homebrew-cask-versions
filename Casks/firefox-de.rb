cask 'firefox-de' do
  version '43.0.4'
  sha256 '36a8da91c3cb072f88feee34c7507833f98df29f14f45eeb2d666b3bedde480e'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/de/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
