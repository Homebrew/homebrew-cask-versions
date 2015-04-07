cask :v1 => 'netbeans-cpp-nightly' do
  version '201504070001'
  sha256 '74bbcebfc086a332018c608efad850d24daff62b9870e86172d47616a233eccf'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
