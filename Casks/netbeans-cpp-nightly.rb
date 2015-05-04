cask :v1 => 'netbeans-cpp-nightly' do
  version '201505040001'
  sha256 'c2084d65a12c8477479d4238ecca7e6b7b822da61742f0c588f8bba2d1e366a2'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
