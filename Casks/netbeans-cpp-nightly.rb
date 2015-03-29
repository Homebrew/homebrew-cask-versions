cask :v1 => 'netbeans-cpp-nightly' do
  homepage 'https://netbeans.org/'
  license :unknown
  version '201503290001'
  sha256 '3871764aded77c8ab8fe92b46da03c9b5037ca4e66b1476687f6c7d9d1bc20e9'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
