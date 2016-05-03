cask 'firefox-it' do
  version '46.0.1'
  sha256 'aff82eb3eb61320cf72fa4d44984943d2f435dabd03c8601d8480c6415911565'

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
