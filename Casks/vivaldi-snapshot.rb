cask 'vivaldi-snapshot' do
  version '2.3.1401.7'
  sha256 '82932299176b655faf0d3dbba4a9d6d73e503a99c3ad98084e2ce7a26b39ac60'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
