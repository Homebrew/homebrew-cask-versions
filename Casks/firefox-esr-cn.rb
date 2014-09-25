class FirefoxEsrCn < Cask
  version '31.1.1'
  sha256 'c596622c12480752efbfa45dbca25ce3c43079b89ca4c886cb35d5dec8727a9f'

  url "http://ftp.mozilla.org/pub/mozilla.org/firefox/releases/latest-esr/mac/zh-CN/Firefox%20#{version}esr.dmg"
  homepage 'https://www.mozilla.org/zh-CN/firefox/desktop/'

  app 'Firefox.app'
end
