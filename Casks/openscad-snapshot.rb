cask 'openscad-snapshot' do
  version '2017.12.02'
  sha256 'f78f453caa6f66096a6465ca6429b7d6446163a45f57899c5579cd9982233fa7'

  url "http://files.openscad.org/snapshots/OpenSCAD-#{version}.dmg"
  appcast 'http://www.openscad.org/inc/mac_snapshot_links.js',
          checkpoint: '15380c14aacfad783e513684eb70b8654716aa7d483e1439c838d6a15f5bd5bd'
  name 'OpenSCAD'
  homepage 'http://www.openscad.org/downloads.html#snapshots'

  app 'OpenSCAD.app'
end
