cask 'firefox-beta-de' do
  version '47.0b4'
  sha256 'a764726a461bf8a3b46e46926d909f98fde2e28dc70e8c325bd290b68610aaee'

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
