cask :v1 => 'netbeans-php-nightly' do
  version '201509220002'
  sha256 'f78143733462160553dda0bae4cab049ab6453cd90bbf1ae9e1d911952398ee3'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for PHP'
  homepage 'https://netbeans.org/'
  license :oss
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
