cask :v1 => 'netbeans-cpp-nightly' do
  version '201510250002'
  sha256 'fa281f6fbb10a1eff9f56dfea6135166b32aca5815d01dec729e135abb9b1f9e'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for C/C++'
  homepage 'https://netbeans.org/'
  license :oss
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
