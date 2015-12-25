cask 'openemu-experimental' do
  version '2.0'
  sha256 '24e08655a21032d61ad62652f5f4d6ac748e41628e74265426df1672559b1ebc'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/OpenEmu/OpenEmu/releases/download/v#{version}/OpenEmu_#{version}-experimental.zip"
  appcast 'https://raw.githubusercontent.com/OpenEmu/OpenEmu-Update/master/appcast-experimental.xml',
          :sha256 => 'd34580c0dbb62c426311027f95b0249b8a981576d3aeda2efb8f87893aef7db9'
  name 'OpenEmu'
  homepage 'http://openemu.org/'
  license :oss

  app 'OpenEmu.app'
  
  depends_on :macos => '>= :el_capitan'
end
