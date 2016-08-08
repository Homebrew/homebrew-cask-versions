cask 'kicad-nightly' do
  version 'r7009.20160807-035111'
  sha256 '16f8b12f98deb043ca1ed10e40c241d8370eb7b7436627efa691a45a630c0b9f'

  url "http://downloads.kicad-pcb.org/osx/nightly/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  suite 'Kicad'
  artifact 'kicad', target: Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
end
