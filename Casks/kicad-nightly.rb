cask :v1 => 'kicad-nightly' do
  version 'r6310.20151112-162311'
  sha256 '7f862b664408a92b3d09d40603b6f28959cf412f8a7b940add36d5860dce4da4'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
