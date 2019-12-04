cask 'vivaldi-snapshot' do
  version '2.9.1745.9'
  sha256 '45bf3d46873e94407c294ee690b45f1072ec8989587fd9caeaee7a806c77942d'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
