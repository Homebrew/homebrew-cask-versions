cask :v1 => 'kicad-nightly' do
  version 'r6131.20150828-035306'
  sha256 'fd42075c39b2ce84e23b03a739cd8b8be0302ad0ecf91e62d9108239c3423e45'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
