class FirefoxNightly < Cask
  url 'http://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-trunk/firefox-33.0a1.en-US.mac.dmg'
  homepage 'https://nightly.mozilla.org/'
  version '33.0a1'
  sha256 :no_check
  link 'FirefoxNightly.app'
end
