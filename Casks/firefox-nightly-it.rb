class FirefoxNightlyIt < Cask
  url 'https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-central-l10n/firefox-34.0a1.it.mac.dmg'
  homepage 'https://nightly.mozilla.org/'
  version 'latest'
  sha256 :no_check
  link 'FirefoxNightly.app'
end
