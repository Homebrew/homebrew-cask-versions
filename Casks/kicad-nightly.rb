cask :v1 => 'kicad-nightly' do
  version 'r6248.20151007-034234'
  sha256 '22f034b04816c66b48ba6b5b02aa03550bb6b4243decba3ad61191471fb88b3d'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
