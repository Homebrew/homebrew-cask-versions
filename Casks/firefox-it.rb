cask 'firefox-it' do
  version '43.0.1'
  sha256 '90451b7ee9240bae2e74b9dc78bec5fb390ed1d52f6c7c464824ce7ec3c6929d'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=it"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/it/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
