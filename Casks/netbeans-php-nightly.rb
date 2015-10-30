cask :v1 => 'netbeans-php-nightly' do
  version '201510290002'
  sha256 'd224b183d84f2b212c63e50e05e65b37fb6acaffeef05a35de08fb15050a90a4'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for PHP'
  homepage 'https://netbeans.org/'
  license :oss
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
