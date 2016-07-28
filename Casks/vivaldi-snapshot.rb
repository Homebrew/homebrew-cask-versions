cask 'vivaldi-snapshot' do
  version '1.3.551.13'
  sha256 '9de78234364eae867456beae6c3765343715e4a643d2dd350e10c155fd6eaa24'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '64c326f794eec663a400d5f44c7f8d6ec7330ef4a25ba3a54538e7494a8480d7'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'
  license :gratis

  app 'Vivaldi.app'
end
