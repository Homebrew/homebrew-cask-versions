cask 'vivaldi-snapshot' do
  version '1.13.1002.4'
  sha256 'ca8656f0460b16912d44a2a94ce18f9d43f1d43646fa1552c96b3e385586512e'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'fae673d6918f1ee12eb2b899798722ad00a4dd115049d103e2f4ecf273c00d51'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
