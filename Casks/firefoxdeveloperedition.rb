cask :v1 => 'firefoxdeveloperedition' do
  version '35.0a2'
  sha256 'a70dcf0643ee998c9850e70bc0beb476dbc1d8b421632ca73cf4f45a69d61305'

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-#{version}.en-US.mac.dmg"
  homepage 'https://www.mozilla.org/en-US/firefox/developer/'
  license :oss

  app 'FirefoxDeveloperEdition.app'
end
