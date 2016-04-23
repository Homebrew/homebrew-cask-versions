cask 'kicad-nightly' do
  version 'r6706.20160422-034348'
  sha256 '9f5d9e9ba2f7d6197a814d47593b13b9105f9b967a37936df01dc19d0b3ecbaa'

  url "http://downloads.kicad-pcb.org/osx/nightly/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  suite 'Kicad'
  artifact 'kicad', target: Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
end
