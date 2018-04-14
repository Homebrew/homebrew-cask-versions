cask 'vivaldi-snapshot' do
  version '1.15.1147.21'
  sha256 '72f0c8ed617191ce82af2f98134ef8b932decdf5ec9be139dc00fbfc74edf113'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '93c17850855d06215c068825407385d8131de867168d516e28e2ff8b7cfb1747'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
