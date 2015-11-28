cask :v1 => 'kicad-nightly' do
  version 'r6329.20151128-034612'
  sha256 '451778137014b609fbedc83760b636dcbb3321aabcf45ccfd32331674e2a6d97'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
