cask 'firefoxnightly-ja' do
  version '49.0a1'
  sha256 'c77c52d616108421919fc41fb3b76f909fb71f91fd56d95660b1eb7c308621d6'

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
