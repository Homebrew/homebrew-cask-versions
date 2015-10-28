cask :v1 => 'kicad-nightly' do
  version 'r6283.20151027-034249'
  sha256 'bd2a542533c5a4c57f82ca4deb9569ae41c9d504dfb022826532df9a4f397c31'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
