cask 'firefox-it' do
  version '45.0'
  sha256 '7db2a3327d1789683330f5fcfc69c81f51c89587038548aceb18676b2277e297'

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
