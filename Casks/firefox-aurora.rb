class FirefoxAurora < Cask
  version '33.0a2'

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-#{version}.en-US.mac.dmg"
  homepage 'https://www.mozilla.org/en-US/firefox/aurora/'

  link 'FirefoxAurora.app'
end
