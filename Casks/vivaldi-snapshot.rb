cask 'vivaldi-snapshot' do
  version '2.11.1805.3'
  sha256 'a71667638256e2443076c05521e4eaccaf5a4944709925ecb3c8026fe8aec64d'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
