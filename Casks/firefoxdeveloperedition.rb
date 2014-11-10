class Firefoxdeveloperedition < Cask
  version '35.0a2'
  sha256 '9d5d504229aa30c96f528713df098cb6436df33fdb329243ccbb0a68b5cba4d5'

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-#{version}.en-US.mac.dmg"
  homepage 'https://www.mozilla.org/en-US/firefox/developer/'
  license :oss

  app 'FirefoxDeveloperEdition.app'
end
