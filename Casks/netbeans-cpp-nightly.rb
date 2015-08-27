cask :v1 => 'netbeans-cpp-nightly' do
  version '201508260002'
  sha256 '603b8d2e4b146d1372210bb810d419beb92158c4d858705e12597839f97a3544'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
