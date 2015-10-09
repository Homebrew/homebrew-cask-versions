cask :v1 => 'netbeans-cpp-nightly' do
  version '201510080002'
  sha256 '571643f1e933798386ce996bc168fc465d358e063b2e01972d5c0a3d125cfd98'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for C/C++'
  homepage 'https://netbeans.org/'
  license :oss
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
