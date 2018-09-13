cask 'vivaldi-snapshot' do
  version '2.0.1302.3'
  sha256 '7fac20ca287a1c4afa9f4fc2973425c8070f6b7f7ecda5f08dc8e4454b56c629'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
