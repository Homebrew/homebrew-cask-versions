class FirefoxAurora < Cask
  version '33.0a2'
  sha256 'd40b6a98209169c44508473a60017ced554e7fb228651718b27e105661448954'

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-#{version}.en-US.mac.dmg"
  homepage 'https://www.mozilla.org/en-US/firefox/aurora/'

  link 'FirefoxAurora.app'
end
