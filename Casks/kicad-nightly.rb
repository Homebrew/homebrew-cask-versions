cask :v1 => 'kicad-nightly' do
  version 'r6202.20150918-035437'
  sha256 'b33b2e4a0efb9c0518130f05ad92c07a7525a2afbc710231b035599287cf73f6'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
