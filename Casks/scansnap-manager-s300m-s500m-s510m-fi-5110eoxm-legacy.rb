cask 'scansnap-manager-s300m-s500m-s510m-fi-5110eoxm-legacy' do
  version '2.2L11'
  sha256 '63d22a3ea7b01a32b0064bacad74dd82359ed366f5039d0fb6519e78cfee5beb'

  url 'http://www.fujitsu.com/downloads/IMAGE/driver/ss/ScanSnap_V22L11.dmg'
  name 'ScanSnap Manager for Fujitsu ScanSnap fi-5110EOXM, S300M, S500M, s501M'
  homepage 'https://www.fujitsu.com/global/support/computing/peripheral/scanners/software/mac.html'

  depends_on macos: [:tiger, :leopard]

  pkg 'ScanSnap_V22L11.pkg'

  uninstall pkgutil: 'jp.co.pfu.ScanSnap.V10L10',
            quit:    [
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
                       'jp.co.pfu.ScanSnap.V10L10',
                     ]

  caveats 'Install cask `scansnap-manager-s300m-s510m` after to update for compatibility with OS X 10.6+'
end
