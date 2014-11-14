cask :v1 => 'firefoxdeveloperedition' do
  version '35.0a2'
  sha256 'ee13e28aa50c0bc6c58f86bbd2f2a8b4fef3a71aeb5536b4b80f131e93a463db'

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-#{version}.en-US.mac.dmg"
  homepage 'https://www.mozilla.org/en-US/firefox/developer/'
  license :oss

  app 'FirefoxDeveloperEdition.app'
end
