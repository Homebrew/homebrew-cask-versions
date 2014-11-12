class Firefoxdeveloperedition < Cask
  version :latest
  sha256 :no_check # always changes as upstream package is updated in-place

  url 'https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-35.0a2.en-US.mac.dmg'
  homepage 'https://www.mozilla.org/en-US/firefox/developer/'
  license :oss

  app 'FirefoxDeveloperEdition.app'
end
