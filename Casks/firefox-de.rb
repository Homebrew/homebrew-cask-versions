cask 'firefox-de' do
  version '43.0'
  sha256 'a9a12b581e028ba680004d677957adac97694ecfbcc20a9a5eca02e87ffb3f4a'

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
