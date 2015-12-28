cask 'firefox-pl' do
  version '43.0.3'
  sha256 '07c4b4065a0e421a7bb6550eadd9f78d52ab5b3df51e07de8e0a2b21c2d77224'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=pl"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/pl/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
