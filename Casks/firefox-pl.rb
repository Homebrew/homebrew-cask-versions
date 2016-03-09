cask 'firefox-pl' do
  version '45.0'
  sha256 '9d02944b4bd5a5f588b78b7b9bb39005eee959c55ca9005b698eebcd3c881b1b'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=pl"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/pl/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
