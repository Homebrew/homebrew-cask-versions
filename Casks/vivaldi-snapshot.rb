cask 'vivaldi-snapshot' do
  version '2.1.1328.4'
  sha256 '6634b3ec02b7016f968234d0d0641ed617441584fccc714a0f5df3a5893947ee'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
