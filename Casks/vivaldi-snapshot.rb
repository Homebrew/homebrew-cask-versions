cask 'vivaldi-snapshot' do
  version '2.8.1650.3'
  sha256 '31a768fd7cbd13776fad43e1810758857e21b3d52ca82bb215ee254b33470b9c'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
