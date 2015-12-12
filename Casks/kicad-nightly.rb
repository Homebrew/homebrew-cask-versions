cask :v1 => 'kicad-nightly' do
  version 'r6367.20151211-044955'
  sha256 '7eae95ae121ae826d1b9648514db0d7c2094bbbad42addbc55f0c62e9600ab32'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
