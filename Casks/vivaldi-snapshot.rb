cask 'vivaldi-snapshot' do
  version '1.15.1089.3'
  sha256 'c0ac796458fe1ad41c771535b4e9810a875eb50a6fe53d3ce836df11c5e1bff3'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '9e11b8c7a19c85142d36c146aef4f093bf178cd5c8858d253d16f3b76d1b6e3b'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
