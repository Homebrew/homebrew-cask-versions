cask 'vivaldi-snapshot' do
  version '2.1.1337.35'
  sha256 '85a21e3d8768c320edce91847b2c8ed8fe2a2c346fb9084486bbdf1a2f9f1b91'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
