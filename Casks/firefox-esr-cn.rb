class FirefoxEsrCn < Cask
  version '31.1.0'
  sha256 'd8069f94f2ff584d6059f7bcdcb1db483a32ed8cffbe23d43647de18b83c6870'
  url "http://ftp.mozilla.org/pub/mozilla.org/firefox/releases/latest-esr/mac/zh-CN/Firefox%20#{version}esr.dmg"
  homepage 'https://www.mozilla.org/zh-CN/firefox/desktop/'
  link 'Firefox.app'
end
