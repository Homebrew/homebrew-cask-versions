cask :v1 => 'kicad-nightly' do
  version 'r6378.20151216-135231'
  sha256 '24e1a35f71576607d624a9d86d40369148af408cd281d380bd6b64bc8080b885'

  url "http://downloads.kicad-pcb.org/osx/nightly/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
