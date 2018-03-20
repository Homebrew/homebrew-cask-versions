cask 'vivaldi-snapshot' do
  version '1.15.1130.3'
  sha256 '9379634ba84d1780bc60d2dd2273da02f0989ad1192334cd878310b4f13a9be2'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '8d97776bd25cd60909572010d921e858011bdeb73f0895af256eac24b463e11e'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
