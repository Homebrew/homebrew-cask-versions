cask :v1 => 'scansnap-manager-v22l16' do
  version '2.2L16'
  sha256 'e67ce69636883acbdaaec40bb02d8f774c383aaa1c834a08c305a990c8a49436'

  url 'http://www.fujitsu.com/downloads/IMAGE/driver/ss/ScanSnap_V22L16.dmg'
  name 'ScanSnap Manager for Mac Update (V2.2L16)'
  homepage 'http://www.fujitsu.com/global/support/computing/peripheral/scanners/software/mac-mg22-eol.html'
  license :commercial

  pkg 'ScanSnap_V22L16.pkg'

  depends_on :cask => 'scansnap-manager-v22l11'
  caveats 'Make sure cask `scansnap-manager-v22l11` is installed before installing this update.'

  uninstall :pkgutil => 'jp.co.pfu.ScanSnap.V22L16',
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
