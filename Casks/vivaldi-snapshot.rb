cask 'vivaldi-snapshot' do
  version '2.8.1664.4'
  sha256 'cb26e7fc3ac7e6095addfcd950b09fe14f12fc85802abc1de8cfe8773d35c55c'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
