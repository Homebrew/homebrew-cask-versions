cask 'firefox-beta-de' do
  version '47.0b8'
  sha256 '447e0037786bd55d48dfe35b863467560c11f0deae12d79bb577b40ba0e691f5'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/de/firefox/beta/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
