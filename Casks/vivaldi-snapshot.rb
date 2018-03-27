cask 'vivaldi-snapshot' do
  version '1.15.1137.3'
  sha256 'cff0a6330608e9c4be0128d9a5d14a7529d7b5e4d4bdbc24ef167e6cab97a1b1'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '98d2efd3543b4c77be41969536454609a6bcca9f37840c7f4ea5fbcea832395b'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
