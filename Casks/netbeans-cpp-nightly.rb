cask :v1 => 'netbeans-cpp-nightly' do
  version '201508120002'
  sha256 '20420ac2b0097ce669b2ea0b897cbd71fa15684447dfa124aa1dd18bbba64849'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
