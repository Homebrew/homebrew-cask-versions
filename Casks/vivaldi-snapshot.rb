cask 'vivaldi-snapshot' do
  version '2.0.1309.3'
  sha256 '2a4dd538df0f9f55a392cf9a359372aafe0332d6926f96f7cb101f017a2bbb19'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
