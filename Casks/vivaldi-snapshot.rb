cask 'vivaldi-snapshot' do
  version '1.7.725.3'
  sha256 '7ead9c4b7200997e0ad1023d10f296fe7142976b2105ad42cc4279c9a93b7fc4'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '25526ba7efb660399ffc79eab492f3de281b23581254ee2d54cab7a81fbc201b'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
