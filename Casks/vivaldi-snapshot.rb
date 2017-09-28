cask 'vivaldi-snapshot' do
  version '1.13.971.8'
  sha256 '695cc278b40b3b2714275052f9aa4fb947633118293aa79659ea7c21932e085c'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'fae673d6918f1ee12eb2b899798722ad00a4dd115049d103e2f4ecf273c00d51'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
