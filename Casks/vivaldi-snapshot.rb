cask 'vivaldi-snapshot' do
  version '2.2.1388.6'
  sha256 '0bf9a2cddc83c36b286eee444d15ac803cf242997a899c7567a66d27e76ee87f'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
