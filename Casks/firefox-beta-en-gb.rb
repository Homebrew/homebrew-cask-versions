cask 'firefox-beta-en-gb' do
  version '47.0b7'
  sha256 'ae4609cf37eff211d6c8b85d6274d4ff1622a04191452f6cf1166fad5b2a39e7'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-GB"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/en-GB/firefox/beta/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
