cask :v1 => 'netbeans-cpp-nightly' do
  version '201506080001'
  sha256 '6817595cb72f2755615ba92958e4a3b95330fe54dfa4ad600f2ce5d5ac604c49'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
