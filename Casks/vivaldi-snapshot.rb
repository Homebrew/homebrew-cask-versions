cask 'vivaldi-snapshot' do
  version '1.15.1104.3'
  sha256 '45c204a37ee31f57bfba5f6f3dc7054bd4d1c3831d98fc8696d37f2fc6ad4379'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '0db1cc77ea71c1724254ffa049c33a1660b7990e4ac2c4960895ad585a14d0a2'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
