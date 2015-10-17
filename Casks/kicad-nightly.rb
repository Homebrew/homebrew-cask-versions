cask :v1 => 'kicad-nightly' do
  version 'r6269.20151016-034219'
  sha256 '16db8cec1bd7be3d94dfc770ccdd7af79bd0abf0faa10459c6054c1d872adbac'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
