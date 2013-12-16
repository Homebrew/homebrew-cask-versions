class QuicktimePlayer7 < Cask
  url 'http://support.apple.com/downloads/DL923/en_US/QuickTimePlayer7.6.6_SnowLeopard.dmg'
  homepage 'http://support.apple.com/kb/dl923'
  version '7.6.6'
  sha1 '5a4d572aca134c4ea5c4646d4def41c8ef04e7c9'
  install 'QuickTimePlayer7.6.6_SnowLeopard.pkg'
  uninstall :pkgutil => 'com.apple.pkg.QuickTimePlayer7.6.6_SnowLeopard',
            :files   => '/Applications/Utilities/QuickTime Player 7.app'
end
