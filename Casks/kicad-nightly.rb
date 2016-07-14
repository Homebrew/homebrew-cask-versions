cask 'kicad-nightly' do
  version 'r6979.20160714-060715'
  sha256 'f991485c047c38d143419b59866b8ee0e7f9845859ee2e7e196fd90687db2b8c'

  url "http://downloads.kicad-pcb.org/osx/nightly/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  suite 'Kicad'
  artifact 'kicad', target: Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
end
