cask :v1 => 'kicad-nightly' do
  version 'r6197.20150915-035344'
  sha256 '2dcb9acc1b3c0c409705c9247099cb39c6fb5666479250cbaef993632c468716'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
