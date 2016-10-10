cask 'vivaldi-snapshot' do
  version '1.5.626.8'
  sha256 '8896eef6538149bfaac1964a691457306a5472a6743361c12d89140ea3dbca2e'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '4342dc87e20b41c7b97d394b4f9e055f5bcc7ccd6fa4a38b3af5af4cc87bc3c1'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
