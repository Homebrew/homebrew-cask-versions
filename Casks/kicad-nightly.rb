cask :v1 => 'kicad-nightly' do
  version 'r6285.20151029-034319'
  sha256 'c46a797b6d7d6c343cc4ba51c9f6e04500273d48e259dbad1ec33d330de7628a'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
