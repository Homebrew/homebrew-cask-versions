class FirefoxJa < Cask
  version 'latest'
  sha256 :no_check

  url 'https://download.mozilla.org/?product=firefox-latest&os=osx&lang=ja-JP-mac'
  homepage 'http://www.mozilla.jp/firefox/'

  link 'Firefox.app'
end
