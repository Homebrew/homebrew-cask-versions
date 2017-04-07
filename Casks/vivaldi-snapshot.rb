cask 'vivaldi-snapshot' do
  version '1.9.804.3'
  sha256 '536fb0a7fb581ed3855e9e59ab0825f47b5538b9df6d19c468775d50ef9c1838'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'c80c0682afc0636241d400fa3dae4139383a8c3daaf4b7c5aea449f1e5adfafc'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
