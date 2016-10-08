cask 'scansnap-manager-s1300' do
  version '3.2L31'
  sha256 '4bdc782e7b2d86c1a3c7e55ae6753440f208a9c92ac1c4290bc17e40ba2f5513'

  url 'http://www.fujitsu.com/downloads/IMAGE/driver/ss/mgr/m-s1300/ScanSnap.dmg'
  name 'ScanSnap Manager for Fujitsu ScanSnap S1300'
  homepage 'https://www.fujitsu.com/global/support/computing/peripheral/scanners/software/s1300m-setup.html'

  depends_on macos: '>= :tiger'

  pkg 'Scansnap Manager.pkg'

  uninstall pkgutil: 'jp.co.pfu.ScanSnap.V10L10'
end
