class FirefoxAurora < Cask
  version :latest
  sha256 :no_check

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-35.0a2.en-US.mac.dmg"
  homepage 'https://www.mozilla.org/en-US/firefox/aurora/'
  license :oss

  app 'FirefoxAurora.app'
end
