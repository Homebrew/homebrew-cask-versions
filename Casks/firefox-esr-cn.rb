class FirefoxEsrCn < Cask
  version '31.2.0'
  sha256 'e023ab33397950501c04b3f49bcc0e63b26bcac381e1e3882db53401890446b4'

  url "http://ftp.mozilla.org/pub/mozilla.org/firefox/releases/latest-esr/mac/zh-CN/Firefox%20#{version}esr.dmg"
  homepage 'https://www.mozilla.org/zh-CN/firefox/desktop/'
  license :oss

  app 'Firefox.app'
end
