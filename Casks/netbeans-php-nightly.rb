cask :v1 => 'netbeans-php-nightly' do
  version '201510250002'
  sha256 'c522e7e540d98463278f8ecf4caa9f4826f8cd13255189cf9c6b8ead3320fa8e'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for PHP'
  homepage 'https://netbeans.org/'
  license :oss
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
