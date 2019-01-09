cask 'vivaldi-snapshot' do
  version '2.3.1420.4'
  sha256 '11cba39b48085585e1019acbb860e3f55aca84a6c17b9c1de7a116ddae8d85b9'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
