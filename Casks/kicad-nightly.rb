cask :v1 => 'kicad-nightly' do
  version 'r6253.20151008-034150'
  sha256 '83ac5942b33527b996b9d92fc6569d7e69b3213ddeefb609bc5f6f90060d3291'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
