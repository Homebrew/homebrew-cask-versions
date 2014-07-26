class FirefoxAurora < Cask
  version '33.0a2'
  sha256 'abfccdd97d9faa7a5f81c3d7e763054ed90c6a01e14cff309e1a94bc35090927'

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-#{version}.en-US.mac.dmg"
  homepage 'https://www.mozilla.org/en-US/firefox/aurora/'

  link 'FirefoxAurora.app'
end
