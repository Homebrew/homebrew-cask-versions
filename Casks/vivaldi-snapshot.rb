cask 'vivaldi-snapshot' do
  version '1.11.882.4'
  sha256 'df6eb75a091f348cd1c9d33834aed972c807d00be7d34839c2d7c93f654ceab7'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '517cfe868ae70118120165425f702b8b5ae920423526014702094729cd9fb2bd'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
