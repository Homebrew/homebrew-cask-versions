cask 'openscad-snapshot' do
  version '2019.10.24'
  sha256 'd819b64b81bc77b587d6a35b1b7298da256a3a4d8976b0b3a75a0f4480cb9570'

  url "https://files.openscad.org/snapshots/OpenSCAD-#{version}.dmg"
  appcast 'https://www.openscad.org/inc/mac_snapshot_links.js'
  name 'OpenSCAD'
  homepage 'https://www.openscad.org/downloads.html#snapshots'

  app 'OpenSCAD.app'
end
