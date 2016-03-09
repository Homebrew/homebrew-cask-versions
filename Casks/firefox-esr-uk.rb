cask 'firefox-esr-uk' do
  version '45.0'
  sha256 '255124f6ed60056b2e4f96428b773d007dc1883d6600462d404388e803ba0f79'

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/uk/Firefox%20#{version}esr.dmg"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/uk/firefox/organizations/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
