cask :v1 => 'firefoxdeveloperedition-ja' do
  version :latest
  sha256 :no_check

  url "https://download.mozilla.org/?product=firefox-aurora-latest-l10n&os=osx&lang=ja-JP-mac"
  homepage 'https://www.mozilla.org/ja/firefox/developer/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'FirefoxDeveloperEdition.app'
end
