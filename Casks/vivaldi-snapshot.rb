cask 'vivaldi-snapshot' do
  version '2.3.1435.4'
  sha256 '02a0756801660507d02fee154e8d5cb437f35edb76ae3df2394b915bcc07ecc8'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
