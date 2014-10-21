class FirefoxAurora < Cask
  version '35.0a2'
  sha256 'c27899ebdb9d3b44ccac8ad904a03b421b65208e66937c62d795aab1d0014999'

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-#{version}.en-US.mac.dmg"
  homepage 'https://www.mozilla.org/en-US/firefox/aurora/'
  license :oss

  app 'FirefoxAurora.app'
end
