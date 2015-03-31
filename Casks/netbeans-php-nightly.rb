cask :v1 => 'netbeans-php-nightly' do
  version '201502110001'
  sha256 'c8cda323f4b0c03bc639e1f39633f5b8ba9278da712520fc4b7f6328622f9b70'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
