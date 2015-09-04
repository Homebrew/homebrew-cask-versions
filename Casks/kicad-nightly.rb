cask :v1 => 'kicad-nightly' do
  version 'r6149.20150903-035321'
  sha256 'b9c1cb234e5efd2c2266719e128865d6a01a4986a1c1a0dee7337d665e8c7e6b'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
