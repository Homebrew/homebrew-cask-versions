cask 'firefox-zh-cn' do
  version '47.0.1'
  sha256 'a85d63ee7fc60face44fdd10a23486192436e024829654684ba6bdefd4358cc3'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-CN"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/zh-CN/firefox/desktop/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
