cask 'vivaldi-snapshot' do
  version '1.14.1038.3'
  sha256 '3de501c7b247cfcb57141b1d898899ac67911f488fd5115bcab3a76639540c50'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'be522f282f3e4e1b4e87d89f3afacbee738783911a3d040b7ba98a2f1c0aa030'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
