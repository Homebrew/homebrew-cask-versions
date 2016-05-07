cask 'vivaldi-snapshot' do
  version '1.2.470.11'
  sha256 '7d5dace8d324cf17ccb436d2e409b405c9236320d8c97707c7adda83e87b12bc'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'a52b990fed35bcd0122b6e9e24584d97cae07d5329d4960485eec92c5c5e4084'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'
  license :gratis

  app 'Vivaldi.app'
end
