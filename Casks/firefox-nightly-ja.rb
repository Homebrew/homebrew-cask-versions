cask 'firefox-nightly-ja' do
  version '46.0a1'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://ftp.mozilla.org/pub/firefox/nightly/latest-mozilla-central-l10n/firefox-#{version}.ja.mac.dmg"
  name 'Mozilla Firefox'
  homepage 'https://nightly.mozilla.org/'
  license :mpl

  app 'FirefoxNightly.app'

  zap :delete => [
                   '~/Library/Application Support/Firefox',
                   '~/Library/Caches/Firefox',
                 ]
end
