cask :v1 => 'netbeans-php-nightly' do
  version '201508050002'
  sha256 '0e97420bdd4de793ed06f46b9a0179fa91bdedae77626bc43923d0eb8f2b46c3'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
