cask 'firefox-fr' do
  version '49.0.1'
  sha256 'b553df6fde061caa7f7ae318455c7c8eca5acd5e119d75971c152d91489a5c62'

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
