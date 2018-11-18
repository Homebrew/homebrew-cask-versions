cask 'vivaldi-snapshot' do
  version '2.2.1369.6'
  sha256 'e0b6fedda40e9d069e429afd89cf5f35bf0688e0f2e283a72b0f25e356599d7c'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
