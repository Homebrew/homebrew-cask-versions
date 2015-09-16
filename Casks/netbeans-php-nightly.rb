cask :v1 => 'netbeans-php-nightly' do
  version '201509150002'
  sha256 'c7b61d78067535cd4763997f2809bbc75281d1ca52652b3f5d5369ebf8277947'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for PHP'
  homepage 'https://netbeans.org/'
  license :oss
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
