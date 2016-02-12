cask 'firefox-it' do
  version '44.0.2'
  sha256 'dbb6b8a44537c51de0618f449a3f7ce990cf7cdb5d2efab5e92d20aa30f3448c'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=it"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/it/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
