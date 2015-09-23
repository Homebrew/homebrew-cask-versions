cask :v1 => 'firefox-it' do
  version '41.0'
  sha256 'e3317d398d4d8ac8dcde5b04c22da1e2881fcd061d8a88f73a2a3eac5c329211'

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
