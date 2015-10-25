cask :v1 => 'kicad-nightly' do
  version 'r6277.20151025-034426'
  sha256 '567d781c34964a5b6feff371183c712993b21287997a2b9adc183ce022de474a'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
