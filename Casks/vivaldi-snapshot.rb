cask 'vivaldi-snapshot' do
  version '1.10.834.9'
  sha256 '61faff09d3626aeb26de9e407e99a31bb0410d6b37cd282b757f460b749c7da6'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '8ea0e402b44f5e7410343a56be536489d1fa38101db65493672b7d89cff781cf'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
