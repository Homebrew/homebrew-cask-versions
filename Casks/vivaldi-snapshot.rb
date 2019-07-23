cask 'vivaldi-snapshot' do
  version '2.7.1609.4'
  sha256 '5549a7ff9d43e282182a260053580106ec6e50f51ebcb586a380c63b6814b6ed'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
