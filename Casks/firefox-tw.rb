cask :v1 => 'firefox-tw' do
  version :latest
  sha256 :no_check

  url 'https://download.mozilla.org/?product=firefox-latest&os=osx&lang=zh-TW'
  homepage 'http://mozilla.com.tw/firefox/new/'
  license :oss

  app 'Firefox.app'
end
