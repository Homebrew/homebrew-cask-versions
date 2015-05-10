cask :v1 => 'kicad-nightly' do
  version 'r5648.20150510-034043'
  sha256 'db80b78369599016d297166b57849d356d42d90fd79010ce3deb6b928d589333'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  homepage 'http://www.kicad-pcb.org/'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
