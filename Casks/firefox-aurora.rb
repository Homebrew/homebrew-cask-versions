class FirefoxAurora < Cask
  version '34.0a2'
  sha256 'a9f79375224c8edd978478a7ce3c8633c51ec76afc67d507cecf17dc7056278c'

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-#{version}.en-US.mac.dmg"
  homepage 'https://www.mozilla.org/en-US/firefox/aurora/'

  link 'FirefoxAurora.app'
end
