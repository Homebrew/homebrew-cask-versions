cask :v1 => 'netbeans-cpp-nightly' do
  homepage 'https://netbeans.org/'
  license :unknown
  version '201503300001'
  sha256 'a32cf8af6bebd159daa13664eb993d86558323bf6036627cccbaaaaf8aacbded'

  url "http://bits.netbeans.org/download/trunk/nightly/latest/bundles/netbeans-trunk-nightly-#{version}-cpp-macosx.dmg"
  pkg "NetBeans Dev #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
