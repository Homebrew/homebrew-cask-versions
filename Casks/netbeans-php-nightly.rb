cask :v1 => 'netbeans-php-nightly' do
  version '201509120002'
  sha256 '8a91d783186bb9f866d818c164b856fba0c8eb23432af4efb5b2ef9d8d266eb0'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
