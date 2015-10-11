cask :v1 => 'kicad-nightly' do
  version 'r6257.20151010-034226'
  sha256 '496801c4f349468e37fd89edb8c4a87247f20007fdf508a7e721e2a550d08843'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
