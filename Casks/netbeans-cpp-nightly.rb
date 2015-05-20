cask :v1 => 'netbeans-cpp-nightly' do
  version '201505200001'
  sha256 'c9537808309d67f6b50592dc13669c5160342d32197856e39d61238ae9b1f6df'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
