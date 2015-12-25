cask 'firefox-tw' do
  version '43.0.2'
  sha256 '383db1d058b8ef09e2d62178ace5b05d5db48f2ca3ab3e85be7d9e92d5df0aac'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-TW"
  name 'Mozilla Firefox'
  homepage 'http://mozilla.com.tw/firefox/new/'
  license :mpl

  app 'Firefox.app'
  
  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
