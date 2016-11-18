cask 'scansnap-manager-s300m-s510m' do
  version '2.2L16'
  sha256 'e67ce69636883acbdaaec40bb02d8f774c383aaa1c834a08c305a990c8a49436'

  url 'http://www.fujitsu.com/downloads/IMAGE/driver/ss/ScanSnap_V22L16.dmg'
  name 'ScanSnap Manager for Fujitsu ScanSnap S300M, S501M'
  homepage 'https://www.fujitsu.com/global/support/products/computing/peripheral/scanners/scansnap/software/'

  depends_on cask: 'scansnap-manager-s300m-s500m-s510m-fi-5110eoxm-legacy'
  depends_on macos: '>= :snow_leopard'

  pkg 'ScanSnap_V22L16.pkg'

  uninstall pkgutil: 'jp.co.pfu.ScanSnap.V22L16',
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
end
