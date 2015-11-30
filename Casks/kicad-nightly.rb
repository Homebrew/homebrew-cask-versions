cask :v1 => 'kicad-nightly' do
  version 'r6331.20151129-034353'
  sha256 '6967629235d6feaf244c068fb7f187dd4efe030a8af97f6b53dbe083ca9dc4ff'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
