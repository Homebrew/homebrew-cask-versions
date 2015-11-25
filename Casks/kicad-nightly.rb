cask :v1 => 'kicad-nightly' do
  version 'r6329.20151125-034755'
  sha256 '346534f7af1639fb6b2276e2beb98fd41c7265668e310a06e5f048902b28a3dd'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
