cask 'firefox-nl' do
  version '45.0.1'
  sha256 'e95562742a4c93afc14d598ab0922b2a252c8971e018ee3b09130c4840f2b7b5'

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
