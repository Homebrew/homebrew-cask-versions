cask 'vivaldi-snapshot' do
  version '2.0.1295.3'
  sha256 '4f5ff5770220b729ed7e9d186a1b683941838dc9309d9f1e08e56d286024862e'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
