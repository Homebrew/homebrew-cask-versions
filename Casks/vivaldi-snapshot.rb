cask 'vivaldi-snapshot' do
  version '2.10.1745.3'
  sha256 'b40860ee481e04c895b05c96944c8ac9825669c830676c67ed378966b6bfe539'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
