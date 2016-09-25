cask 'firefoxnightly-ru' do
  version '52.0a1'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://archive.mozilla.org/pub/firefox/nightly/latest-mozilla-central-l10n/firefox-#{version}.ru.mac.dmg"
  name 'Mozilla Firefox'
  homepage 'https://nightly.mozilla.org/'
  license :mpl

  app 'FirefoxNightly.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
