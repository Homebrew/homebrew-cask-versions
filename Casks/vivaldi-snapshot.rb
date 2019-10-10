cask 'vivaldi-snapshot' do
  version '2.9.1675.11'
  sha256 'ebc1d639dac4ed333c620f89e6dfa3dbc5c9999c0d2d8c72218ff1169599174e'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
