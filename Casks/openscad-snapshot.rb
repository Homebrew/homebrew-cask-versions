cask 'openscad-snapshot' do
  version '2018.11.25'
  sha256 '128cd274dfc4b041f1ecf3d0bc911e8721713e3be2f353ee6b1f6994385cdd66'

  url "https://files.openscad.org/snapshots/OpenSCAD-#{version}.dmg"
  appcast 'https://www.openscad.org/inc/mac_snapshot_links.js'
  name 'OpenSCAD'
  homepage 'https://www.openscad.org/downloads.html#snapshots'

  app 'OpenSCAD.app'
end
