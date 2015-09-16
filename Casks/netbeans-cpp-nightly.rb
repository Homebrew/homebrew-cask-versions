cask :v1 => 'netbeans-cpp-nightly' do
  version '201509150002'
  sha256 'e35bc8960f31f14522f466b2d23eb63df0c2bc215b7ea25829b65a5daba5d078'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for C/C++'
  homepage 'https://netbeans.org/'
  license :oss
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
