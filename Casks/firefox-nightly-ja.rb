class FirefoxNightlyJa < Cask
  version '35.0a1'
  sha256 'c0bc4fc33784256c3b9253c8f2722b454d01f34f73986c8da44b69b6859ba360'

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-central-l10n/firefox-#{version}.ja-JP-mac.mac.dmg"
  homepage 'https://nightly.mozilla.org/'
  license :oss

  app 'FirefoxNightly.app'
end
