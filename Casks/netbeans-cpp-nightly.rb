cask :v1 => 'netbeans-cpp-nightly' do
  version '201507270002'
  sha256 '226310e8dfe677b83ecb59adf9c90c68837974b11b48f83b57819e565d6f6e6e'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
