class FirefoxAurora < Cask
  version '35.0a2'
  sha256 '36e201fe9772d89c68f6555a78748657748da2a902b8334d11bbd2b35f6c720f'

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-#{version}.en-US.mac.dmg"
  homepage 'https://www.mozilla.org/en-US/firefox/aurora/'
  license :oss

  app 'FirefoxAurora.app'
end
