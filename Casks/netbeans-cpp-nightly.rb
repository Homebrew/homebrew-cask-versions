cask :v1 => 'netbeans-cpp-nightly' do
  version '201505160001'
  sha256 '8de57c423d9c8875b7b940d156c02fe8b09bc49bdbb50f10e4d815ac0c5fd9a5'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
