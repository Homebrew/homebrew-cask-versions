cask 'firefox-beta-zh-cn' do
  version '47.0b8'
  sha256 '262ba26b06c18fa40ff7e790e3224f11ced933df3582377daf5a7794b660dd88'

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
