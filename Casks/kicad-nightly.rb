cask :v1 => 'kicad-nightly' do
  version 'r6245.20151005-034203'
  sha256 'f750131563060607390d82c8f1b0e5cb63d8b6ce3aafddf92d4cc78009462594'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
