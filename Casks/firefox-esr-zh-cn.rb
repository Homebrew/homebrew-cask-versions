cask 'firefox-esr-zh-cn' do
  version '45.4.0'
  sha256 '6e3909b983a5a03452c3247b99976083e349c2410e8f223c7b812fbd95e33ea9'

  # mozilla.net was verified as official when first introduced to the cask
  url "https://download.mozilla.org/?product=firefox-#{version}esr-SSL&os=osx&lang=zh-CN"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/zh-CN/firefox/organizations/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
