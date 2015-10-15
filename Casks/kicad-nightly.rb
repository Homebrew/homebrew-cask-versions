cask :v1 => 'kicad-nightly' do
  version 'r6267.20151014-034218'
  sha256 'e57191a2376698f9183b776fe77b2005e529fd5a24c2242bc602d911c60e86ef'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
