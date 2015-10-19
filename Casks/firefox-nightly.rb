cask :v1 => 'firefox-nightly' do
  version '43.0a1'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-trunk/firefox-#{version}.en-US.mac.dmg"
  name 'Firefox'
  name 'Mozilla Firefox'
  homepage 'https://nightly.mozilla.org/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'FirefoxNightly.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
