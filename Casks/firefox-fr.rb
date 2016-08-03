cask 'firefox-fr' do
  version '48.0'
  sha256 'd40634ef4cef1732d77557afa0e68495fa9ea08a29dc99cd69f06a6c0874a476'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=fr"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/fr/firefox/new'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
