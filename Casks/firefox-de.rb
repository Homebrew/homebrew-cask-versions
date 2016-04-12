cask 'firefox-de' do
  version '45.0.2'
  sha256 'be2a9ae5a8e734b935fce7857527684ce33d5b646a4d309dd7f3c2f6094d3a61'

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
