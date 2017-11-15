cask 'vivaldi-snapshot' do
  version '1.13.1008.18'
  sha256 'fad75256b1b9e0a8021ab6e5b7bf3c3361d0ac416668b5343614889cf1fdc1b3'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '0a46f657269c4351a5a483418c1e7ab28a2129ae8507bae9630ce8d3d5ae6060'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
