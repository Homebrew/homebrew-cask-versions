cask :v1 => 'netbeans-php-nightly' do
  version '201511100002'
  sha256 '0f129932104e595e257a0a92868f3634770bd0dfb567fac4a19b6ab651b0ac57'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for PHP'
  homepage 'https://netbeans.org/'
  license :oss
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
