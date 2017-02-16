cask 'vivaldi-snapshot' do
  version '1.8.755.3'
  sha256 '9f9b222ac6f8c57a1dfe56df9a9508faa5953a3e45dab1073788f3f9ec5ae96a'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '92496022be840269ec23b4a0c13276be1fda2ca5ec38eb89d62345f92dd80128'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
