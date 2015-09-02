cask :v1 => 'netbeans-cpp-nightly' do
  version '201509010002'
  sha256 'cc18663d450e43bd6c79b015e614d760706ded280fd147e7f1992fd320b9624e'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
