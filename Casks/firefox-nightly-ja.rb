class FirefoxNightlyJa < Cask
  version '35.0a1'
  sha256 '0ae86c7ff262e234a2dbe59cd5fefdb5e6f646cce08b2c9cb9abc3e533ab26a4'

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-central-l10n/firefox-#{version}.ja-JP-mac.mac.dmg"
  homepage 'https://nightly.mozilla.org/'
  license :oss

  app 'FirefoxNightly.app'
end
