cask :v1 => 'kicad-nightly' do
  version 'r6127.20150826-035253'
  sha256 '325cca87f445dbfc18bdbe720923027ff70d3da3c2119e230da772cb81b2a406'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
