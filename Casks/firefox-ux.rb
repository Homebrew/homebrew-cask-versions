class FirefoxUx < Cask
  url 'https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-ux/firefox-32.0a1.en-US.mac.dmg'
  homepage 'http://people.mozilla.org/~jwein/ux-nightly/'
  version '32.0a1'
  sha256 :no_check
  link 'FirefoxUX.app'
end
