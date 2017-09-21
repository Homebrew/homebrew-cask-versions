cask 'vivaldi-snapshot' do
  version '1.13.966.3'
  sha256 'abfc1221910d8c7af0a6d79b6f8f923ed96a7f44b14f7579a99f641636320a46'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'bf7c659f070c9926411e227c86132e89e5314b8f13edceac13eed57339cce3e0'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
