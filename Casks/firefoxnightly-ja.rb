cask 'firefoxnightly-ja' do
  version '51.0a1'
  sha256 '7b500b7526bc73f0f18ff7a6560a32dacf7b071156ef4046684c0c97f20be814'

  url "https://ftp.mozilla.org/pub/firefox/nightly/latest-mozilla-central-l10n/firefox-#{version}.ja-JP-mac.mac.dmg"
  name 'Mozilla Firefox'
  homepage 'https://nightly.mozilla.org/'

  app 'FirefoxNightly.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
