cask :v1 => 'kicad-nightly' do
  version 'r6310.20151113-040902'
  sha256 '348104b8c8733b8bab0dda30fba885df3d32eb1d94d394dcd18a18cc5afbc1de'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
