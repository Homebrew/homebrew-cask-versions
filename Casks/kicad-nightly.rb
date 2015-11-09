cask :v1 => 'kicad-nightly' do
  version 'r6302.20151108-034320'
  sha256 '1aa71b1bd834581da7613e61a01008056539e34df6850b8e1edc8bff6c4d25f0'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
