cask :v1 => 'netbeans-cpp-nightly' do
  version '201510280002'
  sha256 'c5d34f166bc3caeb3613a7d4ff47c576f49e9feaa23e5eaed87c3c786f7ca86e'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for C/C++'
  homepage 'https://netbeans.org/'
  license :oss
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
