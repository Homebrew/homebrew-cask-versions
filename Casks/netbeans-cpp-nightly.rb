cask :v1 => 'netbeans-cpp-nightly' do
  version '201505100001'
  sha256 'd72362fd52e1bed4bc746ed2026e69584ec58aa2cf42d25661cbef01ac2ca1ad'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
