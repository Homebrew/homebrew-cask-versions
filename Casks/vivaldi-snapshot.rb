cask 'vivaldi-snapshot' do
  version '1.8.770.32'
  sha256 'ea537762a9056d15da043025941d5b9cac6d8d76d12f431b8fe61b8512ef3993'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '89b29c2bf2964445485b14ba8f7907b2ab0b85807c2e6893d59248383ad096af'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
