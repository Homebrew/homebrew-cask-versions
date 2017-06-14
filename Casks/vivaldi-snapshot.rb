cask 'vivaldi-snapshot' do
  version '1.10.867.34'
  sha256 'daeb606fe08f53d8c84e0b06d4f280e66f0a2320339483edf8e4449b0863c796'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '61c3b59db9959dfdb526ddb58ad36538899f45ecb38c1c3cad9cdb2a23775f67'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
