cask 'firefox-de' do
  version '43.0.2'
  sha256 '56581d1f1dd27bcbe3a5d4d06bb52eba17a7d13d8582b40e83d7061413439516'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/de/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
