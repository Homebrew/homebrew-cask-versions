cask :v1 => 'netbeans-cpp-nightly' do
  version '201505090001'
  sha256 '774c5f19d160ce87d12c81dc73a16498ed11394f10afcaf2dad16158d65fc0f9'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
