cask 'firefox-de' do
  version '44.0.1'
  sha256 'f27b321b5703893ca7d79d9d9dd6f25864ad71a8e45001c91d078d3d2dd93766'

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
