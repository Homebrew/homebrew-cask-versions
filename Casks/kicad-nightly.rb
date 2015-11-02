cask :v1 => 'kicad-nightly' do
  version 'r6288.20151101-034304'
  sha256 '314055ee9506af11dfea2cf178d42409dbe93f53b35939ee2c329053173fa74d'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
