cask 'vivaldi-snapshot' do
  version '1.6.682.3'
  sha256 '11e1a1be5a499f94c98891f4f79232b944ff699a19119d49357e596703c54ae2'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'fbd46dd29a822f1d0bfb4f63ed38908286d8ccf4b1356f0a1741cf5f20f66090'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
