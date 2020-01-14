cask 'vivaldi-snapshot' do
  version '2.11.1789.3'
  sha256 'a9c5565e1123a64fea10d4105d809e0b0a38ec3e1161902a7f89c8482bc2f5c0'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
