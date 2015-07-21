cask :v1 => 'kicad-nightly' do
  version 'r5967.20150721-035418'
  sha256 '3b45e0f963ea14653cac86d239d0f3e3a26f1c2ea73985d8a167691418caa9fd'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  homepage 'http://www.kicad-pcb.org/'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
