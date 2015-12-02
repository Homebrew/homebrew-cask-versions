cask :v1 => 'netbeans-cpp-nightly' do
  version '201512011444'
  sha256 '88bd89d3d7038f4919c666098c1f6cfaa6fdf3b12a0307d34c2c34086d815c09'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for C/C++'
  homepage 'https://netbeans.org/'
  license :oss
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
