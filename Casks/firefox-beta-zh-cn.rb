cask 'firefox-beta-zh-cn' do
  version '47.0b5'
  sha256 '7dfd41a045625b0288411ea754d1cdca407bb62ee4a3094450437595cf714515'

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
