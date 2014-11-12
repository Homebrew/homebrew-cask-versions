class Firefoxdeveloperedition < Cask
  version '35.0a2'
  sha256 'f4fad137c894c0a1824195717a1252757e1fbb65192d4bb8ec8fc77083edb175'

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-#{version}.en-US.mac.dmg"
  homepage 'https://www.mozilla.org/en-US/firefox/developer/'
  license :oss

  app 'FirefoxDeveloperEdition.app'
end
