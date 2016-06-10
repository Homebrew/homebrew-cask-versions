cask 'firefox-beta-zh-cn' do
  version '48.0b1'
  sha256 '554ce2ef1c5472a7003e6b459991f39f706b49d89cac3b61d8fd41ef3cd80b7f'

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
