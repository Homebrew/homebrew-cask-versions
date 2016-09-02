cask 'vivaldi-snapshot' do
  version '1.4.589.2'
  sha256 'b768474982e040b2c1151916b9958a754a063072d38b1717f4f599a64d080f48'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '226cee164b3780df72e0a794fd868a52f5abbc92d76b1a8d09f38a0dcb0731e1'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'
  license :gratis

  app 'Vivaldi.app'
end
