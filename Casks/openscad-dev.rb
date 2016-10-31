cask 'openscad-dev' do
  version '2016.10.28'
  sha256 '2ab89b438fc25bbfc7ebc1bd1aa131f2be3d7b4a70659d1fc5ef67f2c2c618c5'

  url "http://files.openscad.org/snapshots/OpenSCAD-#{version}.dmg"
  name 'OpenSCAD'
  homepage 'http://www.openscad.org/'

  app 'OpenSCAD.app'
end
