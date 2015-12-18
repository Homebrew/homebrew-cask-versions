cask 'netbeans-cpp-nightly' do
  version '201512160002'
  sha256 '59d1dd923f5ccc29e411fe6053a8d29c97b42bd57ccd2497cfc21437d98eef1b'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for C/C++'
  homepage 'https://netbeans.org/'
  license :oss
  
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
