cask :v1 => 'firefox-nightly' do
  version '39.0a1'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-trunk/firefox-#{version}.en-US.mac.dmg"
  homepage 'https://nightly.mozilla.org/'
  license :mpl

  app 'FirefoxNightly.app'
end
