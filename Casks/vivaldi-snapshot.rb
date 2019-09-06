cask 'vivaldi-snapshot' do
  version '2.8.1657.8'
  sha256 'a66098729adb8dbaca3f07a02b0303675377176d2dad5f737c00c29c4ca2bea5'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
