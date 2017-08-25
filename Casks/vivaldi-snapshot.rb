cask 'vivaldi-snapshot' do
  version '1.12.941.3'
  sha256 'c0a9d24ccdf05fdb84c80c5f92afdae6d8e9671ea6622304f502293455b31684'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'b7ddd910a298796a86d0dc8ea66f2712662a24decf11a1a01a42ee3fc35fec70'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
