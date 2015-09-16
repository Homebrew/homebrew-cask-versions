cask :v1 => 'netbeans-cpp-nightly' do
  version '201509150002'
  sha256 '7a1c6fb28dd0812a6eca940615d58ad1a2ac26aa87ebaa372e867137460a40c6'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for C/C++'
  homepage 'https://netbeans.org/'
  license :oss
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
