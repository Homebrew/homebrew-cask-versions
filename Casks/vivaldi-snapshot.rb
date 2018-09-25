cask 'vivaldi-snapshot' do
  version '2.0.1309.25'
  sha256 '5eaea6d11f3ca89c854b6dcea750f3a9882d024c46d46f07370fc9467021c6ef'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
