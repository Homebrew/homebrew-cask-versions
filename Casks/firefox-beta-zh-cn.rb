cask 'firefox-beta-zh-cn' do
  version '47.0b9'
  sha256 '994393d73e34fc2866d5866e45397e5498bdab6be013c24601c0f60c572be171'

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
