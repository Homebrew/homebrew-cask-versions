cask 'firefoxnightly-ja' do
  version '50.0a1'
  sha256 '359353e183173c29f6f920446e835c5e21df35cc8558a18443590e11e762c26b'

  url "https://ftp.mozilla.org/pub/firefox/nightly/latest-mozilla-central-l10n/firefox-#{version}.ja-JP-mac.mac.dmg"
  name 'Mozilla Firefox'
  homepage 'https://nightly.mozilla.org/'
  license :mpl

  app 'FirefoxNightly.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
