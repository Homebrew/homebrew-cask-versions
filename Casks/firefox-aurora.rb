class FirefoxAurora < Cask
  version '33.0a2'
  sha256 'c20186fa1b548033e5e589b782449fcd5f48415597321ffe247d8189c70b4302'

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-#{version}.en-US.mac.dmg"
  homepage 'https://www.mozilla.org/en-US/firefox/aurora/'

  link 'FirefoxAurora.app'
end
