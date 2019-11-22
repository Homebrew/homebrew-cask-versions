cask 'vivaldi-snapshot' do
  version '2.9.1732.13'
  sha256 '897bcd0863d2925d64b1607397f13256f14c1a2bc0fbe9e6750643b9e51ef1a6'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
