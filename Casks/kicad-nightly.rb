cask :v1 => 'kicad-nightly' do
  version 'r6296.20151104-034328'
  sha256 'e7826deffc90d6d934bcbf8e4f5d8c73d91480f4bffc8cdfa6977182e8c096bd'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
