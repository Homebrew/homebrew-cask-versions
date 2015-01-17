cask :v1 => 'netbeans-php-nightly' do
  homepage 'https://netbeans.org/'
  license :unknown
  version '201501160001'
  sha256 'b34dcb7a3980dce45a7a0a69501bde386a0405f738e12b2799606f6e304aa2c0'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-php-macosx.dmg"
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
