cask :v1 => 'kicad-nightly' do
  version 'r6326.20151121-154137'
  sha256 'ac1286ae3231b62991cb5a7aab4603f1f9fe9a1f93d44b760a30d17c933ab91f'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
