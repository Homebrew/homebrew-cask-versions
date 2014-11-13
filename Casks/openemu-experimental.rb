cask :v1 => 'openemu-experimental' do
  version '1.0.4'
  sha256 '23b99cf31a11f84e1110c6ce9bf503b6b479583e5229987b6c663bacfed73f06'

  url "https://github.com/OpenEmu/OpenEmu/releases/download/v#{version}/OpenEmu_#{version}-experimental.zip"
  homepage 'http://openemu.org/'
  license :oss

  app 'OpenEmu.app'
end
