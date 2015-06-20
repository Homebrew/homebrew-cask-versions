cask :v1 => 'little-snitch-nightly' do
  version '3.6-nightly-(4348)'
  sha256 '05db23d4dc754eda32dcac727fee320a6bb272ff1f7b76f9ad527ace91679441'

  url "http://www.obdev.at/downloads/littlesnitch/nightly/LittleSnitch-#{version}.dmg"
  homepage 'http://www.obdev.at/products/littlesnitch/index.html'
  license :unknown

  installer :manual => 'Little Snitch Installer.app'
end
