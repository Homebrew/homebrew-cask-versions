cask 'vivaldi-snapshot' do
  version '2.0.1300.5'
  sha256 '0268519bf388d96629eea9b0b5eef6a10d8d1be6738026f2e6060dafcde2f886'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
