cask 'scansnap-manager-sv600' do
  version '6.2L10'
  sha256 '7273034398e9a57eb0fa89167c9e801ad2bf9fe56b52b3d9591628e978168afb'

  url "https://www.fujitsu.com/downloads/IMAGE/driver/ss/mgr/m-sv600/MacScanSnapV#{version.no_dots}WW.dmg"
  name 'ScanSnap Manager for Fujitsu ScanSnap SV600'
  homepage 'https://www.fujitsu.com/global/support/computing/peripheral/scanners/software/'
  license :gratis

  depends_on macos: '>= :lion'

  pkg 'ScanSnap Manager.pkg'

  uninstall pkgutil: 'jp.co.pfu.ScanSnap.*'
end
