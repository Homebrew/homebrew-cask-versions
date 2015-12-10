cask :v1 => 'kicad-nightly' do
  version 'r6353.20151208-034416'
  sha256 '99c3ad5751501a0615c2a15cbc6ec1a7317ec2b0ad8bbd969aea49352e3072d7'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
