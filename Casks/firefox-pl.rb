cask :v1 => 'firefox-pl' do
  version '43.0'
  sha256 '5e7a47795440b94c17d08cf3e25d7ac9047868a03157d88b55fb716d07d9e7f5'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=pl"
  name 'Firefox'
  homepage 'https://www.mozilla.org/pl/firefox/desktop'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
