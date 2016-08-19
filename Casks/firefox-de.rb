cask 'firefox-de' do
  version '48.0.1'
  sha256 'e343f2f019b760f08c9acd6679beee8167170d7e4b1df05e5fe71436f41c945e'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/de/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
