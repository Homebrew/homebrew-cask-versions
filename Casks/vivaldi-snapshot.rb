cask 'vivaldi-snapshot' do
  version '2.9.1719.3'
  sha256 '2d6bb52490284cb5367e5b50ca09e206652584111618974245a5d4262ca41428'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
