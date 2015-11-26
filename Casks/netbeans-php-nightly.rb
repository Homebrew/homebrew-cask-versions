cask :v1 => 'netbeans-php-nightly' do
  version '201511250002'
  sha256 '62c182947cdbb0ca385ca4a26648dd6de64fa98680ee11f7da01ab98c69be734'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for PHP'
  homepage 'https://netbeans.org/'
  license :oss
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
