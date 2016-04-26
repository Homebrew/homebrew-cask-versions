cask 'firefox-it' do
  version '46.0'
  sha256 'ac2f8a875aaf3bb61a98bc46cfa14618b749c9438ad0428fef7c93b444f89208'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=it"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/it/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
