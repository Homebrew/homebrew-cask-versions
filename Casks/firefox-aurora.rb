class FirefoxAurora < Cask
  version '34.0a2'
  sha256 '9509558af0d04f352487a08f236d3b9bfa72bc324e5ddd2c17147071efdd07d7'

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-#{version}.en-US.mac.dmg"
  homepage 'https://www.mozilla.org/en-US/firefox/aurora/'

  link 'FirefoxAurora.app'
end
