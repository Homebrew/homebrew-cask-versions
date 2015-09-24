cask :v1 => 'netbeans-cpp-nightly' do
  version '201509230002'
  sha256 '71152cf4e1b45b3a66fea832baf39d53268399aa6a09871f6df39a01562cd482'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for C/C++'
  homepage 'https://netbeans.org/'
  license :oss
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
