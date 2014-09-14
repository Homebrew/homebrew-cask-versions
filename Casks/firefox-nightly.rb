class FirefoxNightly < Cask
  version 'latest'
  sha256 :no_check

  url 'http://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-trunk/firefox-35.0a1.en-US.mac.dmg'
  homepage 'https://nightly.mozilla.org/'

  link 'FirefoxNightly.app'
end
