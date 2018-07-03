cask 'vivaldi-snapshot' do
  version '1.16.1226.3'
  sha256 'ace0a8fa30c945f8fc828668fc309a9bcb0d909ed8ad9660eb1f1cf8bf4b6a90'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
