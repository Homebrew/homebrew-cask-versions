cask 'vivaldi-snapshot' do
  version '1.11.894.3'
  sha256 '844731976ca527531c78303daaca419d630b40fcd0918feed8dc9f1bbec69a4f'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'e43f701f38b5dbb76156a741713652fd031ab45eff3c24674dcd3bdbf48c18c6'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
