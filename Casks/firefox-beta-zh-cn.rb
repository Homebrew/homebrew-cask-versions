cask 'firefox-beta-zh-cn' do
  version '47.0b6'
  sha256 '165eff7d4db0d6af7a0af3ec32d1727ecc61c4bcdd17c785f137f5571aa22dda'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-CN"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/zh-CN/firefox/beta/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
