cask 'vivaldi-snapshot' do
  version '1.14.1077.3'
  sha256 '08f61ac07478917bc64ab3cd98ad7920d451ad5d7a241a913704b99e586173ac'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '73290226316713b2ce519f89dda1039e97c7c89d759aa581c9b6ac5506ae2f67'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
