cask 'firefox-fr' do
  version '46.0'
  sha256 'ad1b3c3ae19c94838ffe96d7c1b200b24a71d4867ae1d80a49b46f6cc4780db7'

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
