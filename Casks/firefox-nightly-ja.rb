cask :v1 => 'firefox-nightly-ja' do
  version '38.0a1'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-central-l10n/firefox-#{version}.ja-JP-mac.mac.dmg"
  homepage 'https://nightly.mozilla.org/'
  license :mpl

  app 'FirefoxNightly.app'
end
