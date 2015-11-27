cask :v1 => 'kicad-nightly' do
  version 'r6329.20151126-034335'
  sha256 'ceff1d5cf0585fbeaf1564ed87a5adc732956e92d95a1c707008d594c6b9b8a4'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
