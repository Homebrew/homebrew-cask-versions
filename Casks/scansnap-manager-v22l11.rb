cask :v1 => 'scansnap-manager-v22l11' do
  version '2.2L11'
  sha256 '63d22a3ea7b01a32b0064bacad74dd82359ed366f5039d0fb6519e78cfee5beb'

  url 'http://www.fujitsu.com/downloads/IMAGE/driver/ss/ScanSnap_V22L11.dmg'
  name 'ScanSnap Manager for Mac (V2.2L11)'
  homepage 'http://www.fujitsu.com/global/support/computing/peripheral/scanners/software/mac.html'
  license :commercial

  pkg 'ScanSnap_V22L11.pkg'

  caveats "Install cask `scansnap-manager-v22l16` after to update for compatibility with OS X 10.6+"

  uninstall :pkgutil => 'jp.co.pfu.ScanSnap.V10L10',
            :quit => [
              'jp.co.ScanSnap.Scan2PrintBundle',
              'jp.co.pfu.SSPDF2Image',
              'jp.co.pfu.ScanSnap.P2IUNISET',
              'jp.co.pfu.ScanSnap.QuickMenu',
              'jp.co.pfu.ScanSnap.SSLog',
              'jp.co.pfu.ScanSnap.STMApp',
              'jp.co.pfu.ScanSnap.STPApp',
              'jp.co.pfu.ScanSnap.STPPDE',
              'jp.co.pfu.ScanSnap.Scan2Mail',
              'jp.co.pfu.ScanSnap.ScanToFolder',
              'jp.co.pfu.ScanSnap.V10L10'
            ]

end
