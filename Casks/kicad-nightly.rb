cask :v1 => 'kicad-nightly' do
  version 'r6201.20150917-051742'
  sha256 'abac8f406c94e7f21fa11f6cb091f78d74e561ec02b1be5038f03f4d8ec6869c'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
