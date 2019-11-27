cask 'vivaldi-snapshot' do
  version '2.9.1735.3'
  sha256 '3eb2c9bfb4d6152825f1a71448a680358885d7a8eb75f6d5e5c3cb02ee2a1c3d'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
