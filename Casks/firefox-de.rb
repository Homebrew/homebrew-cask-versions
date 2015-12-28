cask 'firefox-de' do
  version '43.0.3'
  sha256 'bcae3abc59be9c8c492ace30745a3e1f51b7cbb71b195844ba6be6314ae20de4'

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
