cask 'java6' do
  version '1.6.0_65'
  sha256 '8f40dbf821e21410feab4d9e2e533c42518897b7cac5edfad895e91016f918fc'

  url 'http://supportdownload.apple.com/download.info.apple.com/Apple_Support_Area/Apple_Software_Updates/Mac_OS_X/downloads/031-29055.20150831-0f779fb2-4bf4-11e5-a8d8-/javaforosx.dmg'
  name 'Java Standard Edition Development Kit'
  homepage 'https://support.apple.com/kb/DL1572'

  pkg 'JavaForOSX.pkg'

  uninstall pkgutil: 'com.apple.pkg.JavaForMacOSX107'
end
