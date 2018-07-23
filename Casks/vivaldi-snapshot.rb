cask 'vivaldi-snapshot' do
  version '1.16.1246.7'
  sha256 'ab4384d99867432e38a0a2a195024e0995a4c5970672bbf4a7f55137801a8b54'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
