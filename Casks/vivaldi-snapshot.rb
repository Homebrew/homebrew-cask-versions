cask 'vivaldi-snapshot' do
  version '2.1.1317.4'
  sha256 'cd39fb582b891415ba78d881bf1b35f520ddb1b7f0f579814e07670d48eb02a1'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
