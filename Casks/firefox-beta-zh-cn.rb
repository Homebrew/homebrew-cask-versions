cask 'firefox-beta-zh-cn' do
  version '47.0b2'
  sha256 'a371c5b8ee534c4030fcaaee227d64767222f5d60221ad8e3efce3bf281b9b14'

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
