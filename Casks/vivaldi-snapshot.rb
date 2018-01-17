cask 'vivaldi-snapshot' do
  version '1.14.1072.3'
  sha256 '345849e24bd6cd14d67f02f243b2eda50e69477f0df0d6d4a6028da64ef52f39'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '50be3002ffd6487f1b547d7ec659f5cfb15866101029bd7c677a97fdbe9b6f53'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
