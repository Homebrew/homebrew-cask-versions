cask 'vivaldi-snapshot' do
  version '1.10.867.27'
  sha256 '29af8b26a3454579663b30a541f0ac4e6e95f48d020480eee1e2b7c68f9444b5'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'ab9fe8cc38012de103dab485205c0156cbee41b2559dde1ba07f03622e3766fb'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
