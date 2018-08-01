cask 'vivaldi-snapshot' do
  version '1.16.1259.3'
  sha256 '4cbb6f3f97b07c558022c3a83e8f034cb735a4c07dc60d6fec4aa75dda3d6c1f'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
