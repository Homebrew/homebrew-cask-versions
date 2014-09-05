class FirefoxCn < Cask
  version 'latest'
  sha256 :no_check

  url 'https://download.mozilla.org/?product=firefox-latest&os=osx&lang=zh-CN'
  homepage 'https://www.mozilla.org/zh-CN/firefox/'

  link 'Firefox.app'
end
