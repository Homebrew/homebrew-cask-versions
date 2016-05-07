cask 'firefox-beta-zh-cn' do
  version '47.0b3'
  sha256 '4e06c5fe71e2ab903c3da41cf0e3aff25f1fd808c8c47d9920335b702953ba35'

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
