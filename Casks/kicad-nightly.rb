cask :v1 => 'kicad-nightly' do
  version 'r6266.20151013-034209'
  sha256 '03baac4bd5ac6db9a4c9ed6826e2706d0f2f2a070cddebaf188e95696c74e9c9'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
