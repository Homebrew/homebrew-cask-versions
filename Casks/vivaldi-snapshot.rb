cask 'vivaldi-snapshot' do
  version '1.8.770.46'
  sha256 '780a8b0e57a6293e993f30192b50029f2fe89f6e8bfd4f225f1fd735768fa7e9'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '286ade0553fc0b51f1fcc20de98c90e757803a7d856e29cf4045340054320c76'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
