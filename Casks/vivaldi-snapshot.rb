cask 'vivaldi-snapshot' do
  version '1.2.490.32'
  sha256 '2d6cbf8bcb76571a92003272fe42e08609b184161a8c6ce786d4f9bb2a32cfb6'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '59dfb49431e6e498e8acdc81f50da82e22b864475d4a95887b706dbff2797135'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'
  license :gratis

  app 'Vivaldi.app'
end
