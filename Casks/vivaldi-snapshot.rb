cask 'vivaldi-snapshot' do
  version '1.10.838.7'
  sha256 'a5384c0c59d3f684d8402bcf2b338fb2bb925a580f4de721de254dbfcb0a6d97'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '00bbbbcca01ecf1bf35819bb4fe78f7008c75e12061a4244d7c8a50f2cc298d3'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
