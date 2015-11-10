cask :v1 => 'kicad-nightly' do
  version 'r6305.20151110-045417'
  sha256 '682db0b8af6fe2f2406d5f2b52fda011d54007a1c6f0f0fd71eff99d397de60d'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
