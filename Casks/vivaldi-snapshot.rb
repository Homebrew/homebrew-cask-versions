cask 'vivaldi-snapshot' do
  version '2.9.1691.4'
  sha256 '051bded11888a13b30b51fb580435ddb65b64bfc38c823661311b35618da63d3'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
