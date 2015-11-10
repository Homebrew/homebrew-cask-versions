cask :v1 => 'netbeans-cpp-nightly' do
  version '201511100002'
  sha256 'd1a23a779543af8ae05ca2598ea2c24a119965c7e4b7503d2a15145f7a9d8923'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for C/C++'
  homepage 'https://netbeans.org/'
  license :oss
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
