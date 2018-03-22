cask 'java6' do
  version '1.6.0_65-b14-468'
  sha256 'a6ea47965542b5c06787f832f3ae5be65da6c6ed91664b0c0ed4994650d98244'

  url 'https://support.apple.com/downloads/DL1572/en_US/javaforosx.dmg'
  name 'Java Standard Edition Development Kit'
  homepage 'https://support.apple.com/kb/DL1572'

  pkg 'JavaForOSX.pkg'

  uninstall pkgutil: [
                       'com.apple.pkg.JavaForMacOSX107',
                       'com.apple.pkg.JavaMDNS',
                       'com.apple.pkg.JavaEssentials',
                     ]

  zap trash: "/Library/Java/JavaVirtualMachines/#{version.major_minor_patch}.jdk"
end
