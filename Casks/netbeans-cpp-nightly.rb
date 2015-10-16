cask :v1 => 'netbeans-cpp-nightly' do
  version '201510150002'
  sha256 '0168b38051bc2f1a817c30f1fa1ba79ff1c5e8d2aad3363daebb05ed142f81d9'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for C/C++'
  homepage 'https://netbeans.org/'
  license :oss
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
