cask 'firefox-ru' do
  version '47.0.1'
  sha256 '241aa3ec3a93a25622f820dc99f293974df30496c849883c5fc45cdca70b7033'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ru"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/ru/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
