cask 'vivaldi-snapshot' do
  version '2.9.1745.22'
  sha256 '5f75dc618337928a92978988fcbc314ab48be54ac91dd3ab62ef25bfd3710847'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
