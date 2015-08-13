cask :v1 => 'kicad-nightly' do
  version 'r6089.20150813-035304'
  sha256 '9576cb65b28b79c15a3671e628d4ae3ded6e22f20da15b91fb6573ae801c128c'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  homepage 'http://www.kicad-pcb.org/display/KICAD/KiCad+EDA+Software+Suite'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
