cask :v1 => 'kicad-nightly' do
  version 'r6292.20151103-034226'
  sha256 'a1eaa48ac2e937b384ae44856cdf4c60a9daa67bfe0340d1ebdb985dc3d5c4a5'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
