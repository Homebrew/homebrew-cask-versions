cask :v1 => 'netbeans-cpp-nightly' do
  version '201511040002'
  sha256 '9aa734a91b93487b3cb4379a44bd781d395d723103b6dec2ef10dd4f014e2403'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for C/C++'
  homepage 'https://netbeans.org/'
  license :oss
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
