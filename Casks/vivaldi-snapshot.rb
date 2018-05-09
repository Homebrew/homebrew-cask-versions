cask 'vivaldi-snapshot' do
  version '1.16.1177.5'
  sha256 'd5251dc36dbb02545f9e6f38465126c4490910c7c4cc2cca8b9f1d7f6862870d'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'a0e51e87f617c0a2a33478854cd9ca746b569fc40b07ad6b13c6f7dc68224ba8'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
