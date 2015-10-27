cask :v1 => 'kicad-nightly' do
  version 'r6279.20151026-034243'
  sha256 '3fbebdd97542acfbdf572fb0257e0b5ac3a43153cc6fcc43a8f3de7ed4ae2d54'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
