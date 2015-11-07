cask :v1 => 'kicad-nightly' do
  version 'r6302.20151106-034317'
  sha256 '16ca77ff4121616e86fc662c086b7e66c9fcc455a9b88dead42eb16c1031beae'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
