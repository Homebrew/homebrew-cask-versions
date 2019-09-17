cask 'vivaldi-snapshot' do
  version '2.8.1664.26'
  sha256 'ed40ce79f97b066d5149b04a951db2df8884ae96aec167dc29aebd01ea416de2'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
