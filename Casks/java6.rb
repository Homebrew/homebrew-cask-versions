class Java6 < Cask
  url 'http://support.apple.com/downloads/DL1572/en_US/JavaForOSX2014-001.dmg'
  homepage 'http://support.apple.com/kb/DL1572'
  version '1.6.0_65'
  sha256 '97bc9b3c47af1f303710c8b15f2bcaedd6b40963c711a18da8eac1e49690a8a0'
  install 'JavaForOSX.pkg'
  uninstall :pkgutil => 'com.apple.pkg.JavaForMacOSX107'
end
