cask :v1 => 'netbeans-php-nightly' do
  version '201509060314'
  sha256 '279afb6042fb2f606e4549389b656ca9d681c04b81962f0225ffc1ff4fab63c2'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
