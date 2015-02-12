cask :v1 => 'netbeans-cpp-nightly' do
  homepage 'https://netbeans.org/'
  license :unknown
  version '201502110001'
  sha256 'fcb6c2949472d5d7397a5d5001220d90f596b38b07e42c623faf7608bfcdc118'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
