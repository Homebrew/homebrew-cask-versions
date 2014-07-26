class FirefoxAurora < Cask
  version '32.0a2'
  sha256 :no_check

  url 'https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-32.0a2.en-US.mac.dmg'
  homepage 'https://www.mozilla.org/en-US/firefox/aurora/'

  link 'FirefoxAurora.app'
end
