cask 'vivaldi-snapshot' do
  version '1.10.829.3'
  sha256 'a68ade373132dba12be8347fb2fdbd8aaf2f089a618da17617d30edcae03ffd2'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'bc6b12ce5e097f1177b5955e11e4831ca93b82c6fb619c4386b85c24295676cd'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
