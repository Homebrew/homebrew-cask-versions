cask 'vivaldi-snapshot' do
  version '1.7.704.3'
  sha256 'd7bedd2abeb04f5af83e95d3e2226ca4671525961dfc84a760721530c985c59b'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '64d40d90878a8313f880e13fbc53984e0603d15de5e822375622fcb24ae5cbe1'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
