cask :v1 => 'netbeans-cpp-nightly' do
  version '201504140001'
  sha256 '931ba3d7dd6c8981e9bb0b60906be91db974cd2f9b7ee6aa33e642258b968d7d'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
