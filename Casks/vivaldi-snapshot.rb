cask 'vivaldi-snapshot' do
  version '2.2.1350.4'
  sha256 '52f6cf58c0d27feb9756ae8d27988a8e063e9944093d906a112a26b02026db67'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
