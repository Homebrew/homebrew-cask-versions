cask 'openemu-experimental' do
  version '2.0.1'
  sha256 'ccaa4027bfe80a9ecc819018b9b96439d3ddbccc37f1c6a00132cf839a93a663'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/OpenEmu/OpenEmu/releases/download/v#{version}/OpenEmu_#{version}-experimental.zip"
  appcast 'https://raw.githubusercontent.com/OpenEmu/OpenEmu-Update/master/appcast-experimental.xml',
          :sha256 => '4137532e5fdf432bbbbb1044a1de071c35f7a56c60cbe0c71bb1773a8f356f2b'
  name 'OpenEmu'
  homepage 'http://openemu.org/'
  license :oss

  app 'OpenEmu.app'
  
  depends_on :macos => '>= :el_capitan'
end
