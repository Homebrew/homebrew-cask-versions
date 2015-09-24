cask :v1 => 'firefox-de' do
  version '41.0'
  sha256 '7db86c4c08710c16f58f5f2bef1239e6ffed5f576d9b7bd68bf2b8018a90dfdc'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  name 'Firefox'
  homepage 'https://www.mozilla.org/de/firefox/desktop'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
