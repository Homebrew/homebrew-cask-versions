cask 'vivaldi-snapshot' do
  version '2.8.1662.4'
  sha256 'e75b518d2f67a62214e7903be42a662d1436867eddd3a37fbdfa79e9766794a1'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
