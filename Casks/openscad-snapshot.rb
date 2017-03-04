cask 'openscad-snapshot' do
  version '2017.02.08'
  sha256 '2a8233bcf353a17b056aa60b52f07396b48db6b3a4585ff8eac49e23d0f2ac64'

  url "http://files.openscad.org/snapshots/OpenSCAD-#{version}.dmg"
  appcast 'http://www.openscad.org/inc/mac_snapshot_links.js',
          checkpoint: 'd467c39256db5382f918fe031a8d5124bd06cee5f9a7cd3f8bb79095fec7ae04'
  name 'OpenSCAD'
  homepage 'http://www.openscad.org/downloads.html#snapshots'

  app 'OpenSCAD.app'
end
