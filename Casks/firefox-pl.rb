cask 'firefox-pl' do
  version '48.0.1'
  sha256 '554fa20400b4a15057ff1e7737850fec8c699bff950019c1f4643ff8f9245616'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=pl"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/pl/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
