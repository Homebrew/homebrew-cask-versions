cask 'firefox-de' do
  version '46.0.1'
  sha256 'a7d88b55fddc13338a8efe508d6804df0df62822dfd7d55b71bc91f5d84676ce'

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
