cask :v1 => 'netbeans-cpp-nightly' do
  version '201511170002'
  sha256 '9d4f02023bcbff2926f66fe64ac305f0cd5a384007477ad51a034c7a774fc10a'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for C/C++'
  homepage 'https://netbeans.org/'
  license :oss
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
