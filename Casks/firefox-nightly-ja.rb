cask :v1 => 'firefox-nightly-ja' do
  version '38.0a1'
  sha256 '666a6a38572f0d452458f0da0992636b09ce3cb9f42288cffcc3450085f0f4fe'

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-central-l10n/firefox-#{version}.ja-JP-mac.mac.dmg"
  homepage 'https://nightly.mozilla.org/'
  license :mpl

  app 'FirefoxNightly.app'
end
