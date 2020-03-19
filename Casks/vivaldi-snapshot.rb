cask 'vivaldi-snapshot' do
  version '2.12.1854.5'
  sha256 '57474008497cb62ef5254623a9f2ff032afd1b8c3e6fa06d1cc989d6a34bf71b'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
