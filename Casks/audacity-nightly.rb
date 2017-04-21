cask 'audacity-nightly' do
  version '2.2.0-8928bd4'
  sha256 '28b95d0c29c04726704af44965c1db1883f3baad9404539e3cd146560558b5ac'

  # audacity.homerow.net was verified as official when first introduced to the cask
  url "http://www.audacity.homerow.net/index.php?dir=mac/audacity-nightly-2017.03.31-06.00-8928bd4/&file=audacity-macosx-#{version}.dmg"
  name 'Audacity'
  homepage 'http://www.audacityteam.org/'

  depends_on macos: '>= :snow_leopard'

  app 'Audacity.app'

  zap delete: '~/Library/Application Support/audacity'
end
