class FirefoxNightly < Cask
  version :latest
  sha256 :no_check

  url 'https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-trunk/firefox-36.0a1.en-US.mac.dmg'
  homepage 'https://nightly.mozilla.org/'
  license :oss

  app 'FirefoxNightly.app'
end
