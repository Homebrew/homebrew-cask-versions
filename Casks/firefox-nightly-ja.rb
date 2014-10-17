class FirefoxNightlyJa < Cask
  version '36.0a1'
  sha256 '7a80d602e7a59e90577a94a9dbe3290fa2a56e660f73c937d34555c418fed847'

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-central-l10n/firefox-#{version}.ja-JP-mac.mac.dmg"
  homepage 'https://nightly.mozilla.org/'
  license :oss

  app 'FirefoxNightly.app'
end
