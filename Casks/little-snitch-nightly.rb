cask :v1 => 'little-snitch-nightly' do
  version '3.6-nightly-(4350)'
  sha256 'c4826574e8a7fef291733bc5b394121f0935b57450d864a9d6331e2c2908e4d3'

  url "http://www.obdev.at/downloads/littlesnitch/nightly/LittleSnitch-#{version}.dmg"
  homepage 'http://www.obdev.at/products/littlesnitch/index.html'
  license :unknown

  installer :manual => 'Little Snitch Installer.app'
end
