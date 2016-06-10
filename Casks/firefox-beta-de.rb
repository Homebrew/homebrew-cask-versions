cask 'firefox-beta-de' do
  version '48.0b1'
  sha256 '9c03cc959546aa4f0502b18594b4e7631a16c817ba207da2af3cebcb6be8aa48'

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
