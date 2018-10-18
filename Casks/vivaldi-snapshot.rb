cask 'vivaldi-snapshot' do
  version '2.1.1337.17'
  sha256 'c9bae8e7507dd252ff355acd1f2c72b4442f2f17aa9748e2fcc6329a5751e902'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
