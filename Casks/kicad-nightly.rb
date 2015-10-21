cask :v1 => 'kicad-nightly' do
  version 'r6271.20151020-034349'
  sha256 '471455a18c2013bef8f9194a5be4b54d167801d137f7b3fd8a7e9923a83c781a'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
