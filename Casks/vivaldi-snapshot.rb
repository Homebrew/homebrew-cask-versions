cask 'vivaldi-snapshot' do
  version '2.0.1308.5'
  sha256 'ec6d1c273e605da62dad847042d9a42e9ad315baa0a8ba70c7b08b4a887c020e'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
