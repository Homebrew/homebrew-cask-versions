cask 'java6' do
  version :latest
  sha256 :no_check

  url 'https://support.apple.com/downloads/DL1572/en_US/javaforosx.dmg'
  name 'Java Standard Edition Development Kit'
  homepage 'https://support.apple.com/kb/DL1572'

  pkg 'JavaForOSX.pkg'

  uninstall pkgutil: [
                       'com.apple.pkg.JavaForMacOSX107',
                       'com.apple.pkg.JavaMDNS',
                       'com.apple.pkg.JavaEssentials',
                     ]
end
