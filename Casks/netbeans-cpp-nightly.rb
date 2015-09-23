cask :v1 => 'netbeans-cpp-nightly' do
  version '201509220002'
  sha256 'c3f251c4f939ea56438c3844807fcdbd4c55e0943c9cabe59450f85c6d008b72'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for C/C++'
  homepage 'https://netbeans.org/'
  license :oss
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
