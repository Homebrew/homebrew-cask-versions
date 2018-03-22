cask 'vivaldi-snapshot' do
  version '1.15.1132.3'
  sha256 'a9ce30e54b64ff06304549b2d6be5e66bf7e50daff1b5711119b79ff5a62a108'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'c3516910360693e6f0bbae990093497fab2bcf6ef317164e4997a6765bc96431'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
