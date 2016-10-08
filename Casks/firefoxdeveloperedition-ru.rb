cask 'firefoxdeveloperedition-ru' do
  version :latest
  sha256 :no_check

  url 'https://download.mozilla.org/?product=firefox-aurora-latest-l10n&os=osx&lang=ru'
  name 'Mozilla Firefox Developer Edition'
  homepage 'https://www.mozilla.org/ru/firefox/developer/'

  app 'FirefoxDeveloperEdition.app'
end
