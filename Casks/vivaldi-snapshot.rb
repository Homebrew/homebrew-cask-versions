cask 'vivaldi-snapshot' do
  version '2.9.1705.30'
  sha256 'f52b694f9a1bce72e7f1a2e5659e31accdcf88018e70ace8634cad185141f23f'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
