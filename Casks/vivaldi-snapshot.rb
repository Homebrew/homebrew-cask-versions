cask 'vivaldi-snapshot' do
  version '1.16.1230.3'
  sha256 '4f599ace36ec01f725cb83b89e51901b1b2e6dbc230b67bd539acba45084a6ee'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
