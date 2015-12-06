cask :v1 => 'kicad-nightly' do
  version 'r6347.20151205-034522'
  sha256 'd1fc8a34d86500d15a019b5f7ae8acdd32ffa2b7508295fe7691b8faeeaa73d0'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
