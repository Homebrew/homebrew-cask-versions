cask :v1 => 'kicad-nightly' do
  version 'r6273.20151022-034440'
  sha256 'bc1538e0cebf08ad649814964f6dc3025f7ca96973a6846521f5bc9c33f29bce'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
