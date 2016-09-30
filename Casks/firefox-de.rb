cask 'firefox-de' do
  version '49.0'
  sha256 '6e2d8e4b630a6451134fe3d3b592475bc6ee35c2011624e1ed944b3a3f427762'

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
