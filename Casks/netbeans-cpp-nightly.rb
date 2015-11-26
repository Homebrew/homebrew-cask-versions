cask :v1 => 'netbeans-cpp-nightly' do
  version '201511250002'
  sha256 'a9d1e1c1400ab9c653b733ad9574b080a9b2f656ee0c8a332c9d31c13740c00a'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for C/C++'
  homepage 'https://netbeans.org/'
  license :oss
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
