cask :v1 => 'java6' do
  version '1.6.0_65'
  sha256 '1b7b88c7c7ca3a1c50eacee1977dee974a50157ff7c88d0e73902bd98fc58a86'

  url 'https://support.apple.com/downloads/DL1572/en_US/javaforosx.dmg'
  homepage 'https://support.apple.com/kb/DL1572'
  license :unknown

  pkg 'JavaForOSX.pkg'

  uninstall :pkgutil => 'com.apple.pkg.JavaForMacOSX107'
end
