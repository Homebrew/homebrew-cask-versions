cask :v1 => 'kicad-nightly' do
  version 'r6303.20151109-045453'
  sha256 '5b891900d68f5a9cf3c8d29c549c496db8747c3ce33ca0e5642ea42d1e6312f8'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
