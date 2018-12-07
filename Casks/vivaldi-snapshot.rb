cask 'vivaldi-snapshot' do
  version '2.2.1388.21'
  sha256 '7445d4e5bc02565a5149896a38b57fe0c58062459cfec5f45f7fcfdce65fa57a'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
