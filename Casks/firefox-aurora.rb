class FirefoxAurora < Cask
  version '34.0a2'
  sha256 '87a3737eeb8679890a71a4c4a94f15ea35b9d236f5c5dc7bd014331726c78042'

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-#{version}.en-US.mac.dmg"
  homepage 'https://www.mozilla.org/en-US/firefox/aurora/'

  link 'FirefoxAurora.app'
end
