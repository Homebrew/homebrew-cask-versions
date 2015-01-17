cask :v1 => 'firefox-nightly' do
  version '38.0a1'
  sha256 'd0a1f9bf78de8c2b21e0e3fc90e878744699ef086e6dfa14e9551b4e1a618b98'

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-trunk/firefox-#{version}.en-US.mac.dmg"
  homepage 'https://nightly.mozilla.org/'
  license :mpl

  app 'FirefoxNightly.app'
end
