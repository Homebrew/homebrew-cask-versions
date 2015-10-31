cask :v1 => 'kicad-nightly' do
  version 'r6286.20151031-034310'
  sha256 '8fbb5312a4f8d8c78a5c76b0307249ddc35b2f33d80addd3a6add5a987f4f6ea'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
