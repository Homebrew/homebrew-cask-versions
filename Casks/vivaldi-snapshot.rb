cask 'vivaldi-snapshot' do
  version '1.13.998.3'
  sha256 '7ea11509ba7f561243d180903ba9e45adccf4c1ae98a353a41f5941a738bc9cd'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'fae673d6918f1ee12eb2b899798722ad00a4dd115049d103e2f4ecf273c00d51'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
