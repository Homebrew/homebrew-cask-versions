cask 'firefox-nl' do
  version '46.0'
  sha256 'aeddb44bd3af8abb1a2a26699e4b198a119fd86202987c83a95ca3845b24f1e0'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=nl"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/nl/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
