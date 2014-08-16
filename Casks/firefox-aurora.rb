class FirefoxAurora < Cask
  version '33.0a2'
  sha256 'de4bc141458212ef1a44dab29a32ed32baabd85c97da1e840a774a0eece8cd8f'

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-#{version}.en-US.mac.dmg"
  homepage 'https://www.mozilla.org/en-US/firefox/aurora/'

  link 'FirefoxAurora.app'
end
