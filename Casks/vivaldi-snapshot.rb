cask 'vivaldi-snapshot' do
  version '2.2.1388.23'
  sha256 'addd7f0357a1887ba062becd198be62d189db557a86c228bbfa4077fd133323e'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
