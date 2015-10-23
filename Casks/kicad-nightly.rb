cask :v1 => 'kicad-nightly' do
  version 'r6275.20151023-034309'
  sha256 '8fc2f5736fcf884ac28a09f6088ec835b60628cb2496266be0f858b935714a1a'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
