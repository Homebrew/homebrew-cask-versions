cask :v1 => 'kicad-nightly' do
  version 'r6318.20151117-045954'
  sha256 '6d21733bb6bd8c139d404288f656744796eb615069abf7f85bf4b4f182e3da34'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
