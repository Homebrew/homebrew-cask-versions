class FirefoxCn < Cask
  url 'https://download.mozilla.org/?product=firefox-latest&os=osx&lang=zh-CN'
  homepage 'https://www.mozilla.org/zh-CN/firefox/'
  version 'latest'
  sha256 :no_check
  link 'Firefox.app'
end
