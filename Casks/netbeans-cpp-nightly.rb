cask :v1 => 'netbeans-cpp-nightly' do
  version '201509060314'
  sha256 'f2117b2bc675c39be55432831b09c680dfb60679219927326dfda2519261f458'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
