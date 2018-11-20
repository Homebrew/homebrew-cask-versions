cask 'vivaldi-snapshot' do
  version '2.2.1373.4'
  sha256 'cedd1d50c41ed92ddaba0c3761c04dcc4bd045218bbf6dedd343e3794cd73ec8'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
