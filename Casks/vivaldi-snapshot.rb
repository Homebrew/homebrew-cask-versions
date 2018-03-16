cask 'vivaldi-snapshot' do
  version '1.15.1125.3'
  sha256 '5bcdf4ddfe5892edff4c947d15e9aa6c492c8718eb77188704558d98eaf5a73f'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '928cff7de80e5d32c2ea954288ebcc0adc592dc5e5aab048e15f33a394d00a84'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
