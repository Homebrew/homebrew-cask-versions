cask 'firefox-it' do
  version '43.0'
  sha256 '3489c7f6be24df545c6ce59c8aa31f36ed546d604283a986278632501d067a29'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=it"
  name 'Firefox'
  homepage 'https://www.mozilla.org/it/firefox/desktop'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
