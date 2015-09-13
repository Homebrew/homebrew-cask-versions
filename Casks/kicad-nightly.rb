cask :v1 => 'kicad-nightly' do
  version 'r6188.20150913-035418'
  sha256 'd43da295d54c1a80b7d0b6ad541bdea0a8f6168002413a3859574bc0c3a06087'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
