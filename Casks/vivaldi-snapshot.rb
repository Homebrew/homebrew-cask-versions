cask 'vivaldi-snapshot' do
  version '2.10.1745.7'
  sha256 '256fb58981df3237575c329fe1c67e2ac3de1d0d3f7cd32adb003ccb03107d5a'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
