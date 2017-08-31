cask 'vivaldi-snapshot' do
  version '1.12.947.3'
  sha256 'eeca5d6d9dd99dc2399a0a6585b69a5664825568e1fa32ff71b19ad71c97ee22'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'cb736be8d6fbbd99ecf985bbc3a13825a0cb37a6b07600571385653101762ffc'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
