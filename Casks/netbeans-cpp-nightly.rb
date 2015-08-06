cask :v1 => 'netbeans-cpp-nightly' do
  version '201508050002'
  sha256 'b442b11504afc7c07f27e8ccde3cec44d80f255ce09e04542a57ba251eec4e3c'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
