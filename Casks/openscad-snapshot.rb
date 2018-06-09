cask 'openscad-snapshot' do
  version '2018.03.17'
  sha256 '58330d5118ec921b3ed930adfb35e90fdaa30afc25930f85cc102fdf255112aa'

  url "http://files.openscad.org/snapshots/OpenSCAD-#{version}.dmg"
  appcast 'http://www.openscad.org/inc/mac_snapshot_links.js'
  name 'OpenSCAD'
  homepage 'http://www.openscad.org/downloads.html#snapshots'

  app 'OpenSCAD.app'
end
