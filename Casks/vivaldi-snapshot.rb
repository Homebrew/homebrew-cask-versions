cask 'vivaldi-snapshot' do
  version '1.7.735.36'
  sha256 '49d9bd5b9efd67bfb6c71c1096f7183e14cbcd700a121b72f8a31ad468e92391'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '74d6a00ed2eab939b15ff011f1b69fb0fe379fc21d8eb6046c95942393c3cd21'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
