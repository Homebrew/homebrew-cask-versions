cask 'openscad-snapshot' do
  version '2018.03.17'
  sha256 '58330d5118ec921b3ed930adfb35e90fdaa30afc25930f85cc102fdf255112aa'

  url "http://files.openscad.org/snapshots/OpenSCAD-#{version}.dmg"
  appcast 'http://www.openscad.org/inc/mac_snapshot_links.js',
          checkpoint: '3649c93e68cf90854651ef413939474ea8530010916dbd6d0cb2e234b56954a6'
  name 'OpenSCAD'
  homepage 'http://www.openscad.org/downloads.html#snapshots'

  app 'OpenSCAD.app'
end
