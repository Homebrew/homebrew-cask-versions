cask :v1 => 'netbeans-php-nightly' do
  version '201510230002'
  sha256 'b9055497944604d8785628b53dcae8e6ba8da33633be8766fc91ba642778f305'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for PHP'
  homepage 'https://netbeans.org/'
  license :oss
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
