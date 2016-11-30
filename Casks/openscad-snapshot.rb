cask 'openscad-snapshot' do
  version '2016.11.21'
  sha256 'c45644337450bbbac5cbb361d96899f6451a12b8244511683eb7a2cd200877fa'

  url "http://files.openscad.org/snapshots/OpenSCAD-#{version}.dmg"
  name 'OpenSCAD'
  homepage 'http://www.openscad.org/downloads.html#snapshots'

  app 'OpenSCAD.app'
end
