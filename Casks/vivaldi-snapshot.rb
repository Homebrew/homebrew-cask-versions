cask 'vivaldi-snapshot' do
  version '1.15.1111.3'
  sha256 '1d9697ac6321fac39383cad5c3d5ab1e52cb13eb69cdb31a7c129833c0401649'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'c3f04830fad8ff5d0168aa69bfd8ea5c2a74291e7958066040d1212ed5af716f'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
