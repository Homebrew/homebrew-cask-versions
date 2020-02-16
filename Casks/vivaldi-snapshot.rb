cask 'vivaldi-snapshot' do
  version '2.11.1811.28'
  sha256 '2f3b3092c07829a13cdfbcb601c7d1d466331f71755cccf8e05bfb0fb829d444'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
