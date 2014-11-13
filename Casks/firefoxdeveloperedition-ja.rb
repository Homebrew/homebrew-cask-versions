cask :v1 => 'firefoxdeveloperedition-ja' do
  version '35.0a2'
  sha256 '3f990fbf7fe911efd27aaa22fae6b7e42f5f132792b08efc90ffa453fb2b6d78'

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora-l10n/firefox-#{version}.ja-JP-mac.mac.dmg"
  homepage 'https://www.mozilla.org/ja/firefox/developer/'
  license :oss

  app 'FirefoxDeveloperEdition.app'
end
