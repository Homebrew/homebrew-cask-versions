cask 'vivaldi-snapshot' do
  version '2.1.1322.4'
  sha256 '06ceb57dc9a6abf3da9c33193b19dd97bdee70a56248da59f9dd98a0fb6ec417'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
