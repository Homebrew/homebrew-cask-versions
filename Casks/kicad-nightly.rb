cask :v1 => 'kicad-nightly' do
  version 'r5871.20150702-113721'
  sha256 '62f510bc72453be231d5cd7079b51bfa7891fded80f09e3e090eae20bb6ef2ce'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  homepage 'http://www.kicad-pcb.org/'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
