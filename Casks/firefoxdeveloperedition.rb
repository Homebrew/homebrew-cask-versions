class Firefoxdeveloperedition < Cask
  version '35.0a2'
  sha256 '046bd7e7018c5569202abfd82b006a3e999ee2650b704dcc229dce4b85054fd0'

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-#{version}.en-US.mac.dmg"
  homepage 'https://www.mozilla.org/en-US/firefox/developer/'
  license :oss

  app 'FirefoxDeveloperEdition.app'
end
