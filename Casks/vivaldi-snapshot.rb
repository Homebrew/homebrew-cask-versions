cask 'vivaldi-snapshot' do
  version '1.11.917.35'
  sha256 '08d0ea5700cfa609b6e6cc518f209d73ca6e6b9c3026baff14a130bd973227b7'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '6d5575165b5e53dbd5adde1699801739e5b980edf4868232f7189abdde414d9e'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
