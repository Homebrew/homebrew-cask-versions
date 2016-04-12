cask 'firefox-nl' do
  version '45.0.2'
  sha256 'f30ed81b0f9fdc007ce6d655683e62c7eabee02a9b295be44734d5c9e8348165'

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
