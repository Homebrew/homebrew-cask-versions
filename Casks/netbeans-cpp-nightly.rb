cask :v1 => 'netbeans-cpp-nightly' do
  version '201510230002'
  sha256 '8545cc7f3a10c7f723b3e25e7b35727ee80672f59226e0a5c3e933abdc632fe0'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for C/C++'
  homepage 'https://netbeans.org/'
  license :oss
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
