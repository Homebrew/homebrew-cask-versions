cask 'vivaldi-snapshot' do
  version '2.2.1360.4'
  sha256 'aad7c869afe7738d2705d58f3ef391bdd22e98703d04eb1b8b60d872977f5911'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
