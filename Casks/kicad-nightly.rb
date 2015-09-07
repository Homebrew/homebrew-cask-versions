cask :v1 => 'kicad-nightly' do
  version 'r6159.20150906-035437'
  sha256 '0bf7d9bea180ca7d7f462c5074dc111c8c4843a64ae6f6a3459cdb54bf1fedc5'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
