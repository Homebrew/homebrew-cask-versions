cask :v1 => 'kicad-nightly' do
  version 'r6288.20151102-034220'
  sha256 '5e0fcae7572ab8435e422fc057345799442ba5c48ebbadad158feda3384f190a'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
