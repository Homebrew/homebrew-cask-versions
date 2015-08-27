cask :v1 => 'netbeans-php-nightly' do
  version '201508260002'
  sha256 '7a2de9d3ba09fa9729881f10aee55717d9e22406e496db93376fc90e311c9400'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
