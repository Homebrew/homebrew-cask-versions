cask :v1 => 'netbeans-cpp-nightly' do
  version '201504170001'
  sha256 '776276cf6c78dbf2c9e84c298d0f946c190bc5803979f47864df07148b554e20'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
