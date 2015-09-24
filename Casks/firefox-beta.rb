cask :v1 => 'firefox-beta' do
  version '42.0b1'
  sha256 'a5c3ac5ee48c03e239cb5a832cda116bde844f37e68ae1d21e7f939358811782'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-US"
  name 'Firefox'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/en-US/firefox/channel/#beta'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
