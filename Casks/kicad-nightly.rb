cask :v1 => 'kicad-nightly' do
  version 'r6238.20151002-034144'
  sha256 '7006faad758767f99d076a0fc33e614581f27ae4833d79617792f8acd85e3032'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
