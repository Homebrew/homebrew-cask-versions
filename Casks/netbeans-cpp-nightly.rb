cask :v1 => 'netbeans-cpp-nightly' do
  version '201510040002'
  sha256 'c1daa5ca629ac37bb281246bbe6f3b204879cc08a257e608827f89fa27d762f3'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for C/C++'
  homepage 'https://netbeans.org/'
  license :oss
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
