cask 'kicad-nightly' do
  version 'r6775.20160506-034556'
  sha256 '2e31fe6ebe0ca571245ddd3ca53e0302e7088d50651c70546c9d6394d13d1aa4'

  url "http://downloads.kicad-pcb.org/osx/nightly/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  suite 'Kicad'
  artifact 'kicad', target: Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
end
