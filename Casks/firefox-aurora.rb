class FirefoxAurora < Cask
  version '33.0a2'
  sha256 '35045ef119d1779ce2a4639bd7219d41498aef8e58e011e8d1bdda93ba1bded0'

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-#{version}.en-US.mac.dmg"
  homepage 'https://www.mozilla.org/en-US/firefox/aurora/'

  link 'FirefoxAurora.app'
end
