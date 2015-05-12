cask :v1 => 'netbeans-php-nightly' do
  version '201505100001'
  sha256 'a197c515bf3cdcd4ad7b8b4baa2bd9957c236b02a97a3c1513af36c7d82f6c38'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
