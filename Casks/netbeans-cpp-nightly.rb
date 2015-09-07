cask :v1 => 'netbeans-cpp-nightly' do
  version '201509070002'
  sha256 '39ae95386d6e4ba4ca78b14497b0dcaeb7644402ef7becc3e00e51103e8a79a3'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
