cask :v1 => 'netbeans-php-nightly' do
  version '201511040002'
  sha256 '76f5819c27f50be1660d82f405a0544aafdfd34f6291b8dabf4413dfac892a24'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for PHP'
  homepage 'https://netbeans.org/'
  license :oss
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
