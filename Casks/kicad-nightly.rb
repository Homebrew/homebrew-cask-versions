cask :v1 => 'kicad-nightly' do
  version 'r6201.20150916-051651'
  sha256 '5d5f890374ab81d5810a9afdb63ee72d787cf3a4430c3f76c4bc82bcd0fe207a'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
