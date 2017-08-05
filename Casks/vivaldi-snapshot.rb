cask 'vivaldi-snapshot' do
  version '1.11.917.22'
  sha256 'f5ef81e960e87b751995ca5f3eef26c0df857fd863cece0cd6d036a535515c47'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '34227ec6ea03e51fc18815e640779f43375510aa7c2f7643843bf3f30fcf2a0e'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
