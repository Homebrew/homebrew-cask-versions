cask 'vivaldi-snapshot' do
  version '1.10.867.32'
  sha256 'a2922f96eb642461bb51a1209e588411e40db0103546ada038a1185eeaace667'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'a24ab07c620a9ec5999e314af23db374483d83e3ed9a3b74b55b51281cb7170f'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
