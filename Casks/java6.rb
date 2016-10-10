cask 'java6' do
  version '1.6.0_65'
  sha256 '8f40dbf821e21410feab4d9e2e533c42518897b7cac5edfad895e91016f918fc'

  url 'https://support.apple.com/downloads/DL1572/en_US/javaforosx.dmg'
  name 'Java Standard Edition Development Kit'
  homepage 'https://support.apple.com/kb/DL1572'

  pkg 'JavaForOSX.pkg'

  uninstall pkgutil: 'com.apple.pkg.JavaForMacOSX107'
end
