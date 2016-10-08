cask 'firefoxdeveloperedition-uk' do
  version :latest
  sha256 :no_check

  url 'https://download.mozilla.org/?product=firefox-aurora-latest-l10n&os=osx&lang=uk'
  name 'Mozilla Firefox Developer Edition'
  homepage 'https://www.mozilla.org/uk/firefox/developer/'

  app 'FirefoxDeveloperEdition.app'
end
