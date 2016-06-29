cask 'firefox-beta-de' do
  version '48.0b4'
  sha256 '72bb7423840396e0aef43d7972736a2568fe42d61d526db15d3a647ea39f0bf6'

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
