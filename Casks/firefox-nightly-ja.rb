class FirefoxNightlyJa < Cask
  version '35.0a1'
  sha256 'e024fd2ddc17cec0cdf8969b9128423209b54a8833245044ca8548a9fce7e878'

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-central-l10n/firefox-#{version}.ja-JP-mac.mac.dmg"
  homepage 'https://nightly.mozilla.org/'
  license :oss

  app 'FirefoxNightly.app'
end
