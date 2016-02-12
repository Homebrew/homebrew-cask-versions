cask 'firefox-de' do
  version '44.0.2'
  sha256 'f425682a42492599634bb2a3556b42f9060481cc068e0a2e9f97e4f9d2cadb1c'

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
