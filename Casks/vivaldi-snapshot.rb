cask 'vivaldi-snapshot' do
  version '2.2.1388.29'
  sha256 'a2b339c1f43b3e2ce7050d8b5b500439279372ee079d3d12f98bb237f98338e1'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
