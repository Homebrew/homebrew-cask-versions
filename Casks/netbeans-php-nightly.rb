cask :v1 => 'netbeans-php-nightly' do
  version '201508120002'
  sha256 '135155885a9c4be1747d4ef8a687aee79569dc44eb21359c86c01b19bce7726e'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
