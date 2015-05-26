cask :v1 => 'netbeans-cpp-nightly' do
  version '201505250001'
  sha256 '99e211472b3fa68b113006960afa32908dca82695311067ab150df14d00ef23d'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
