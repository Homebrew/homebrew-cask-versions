cask :v1 => 'phpstorm-eap' do
  version '141.1619'
  sha256 '2010ccfcc3562473ec5daeb316740de32143a0e023fa22f28e48eb7a163b0629'

  url "https://download.jetbrains.com/webide/PhpStorm-EAP-#{version}.dmg"
  homepage 'http://confluence.jetbrains.com/display/PhpStorm/PhpStorm+Early+Access+Program'
  license :commercial

  app 'PhpStorm EAP.app'

  zap :delete => [
                  '~/Library/Application Support/WebIde90',
                  '~/Library/Caches/WebIde90',
                  '~/Library/Logs/WebIde90',
                  '~/Library/Preferences/WebIde90',
                  '~/Library/Preferences/com.jetbrains.PhpStorm-EAP.plist',
                  '~/.WebIde90',
                 ]

  caveats <<-EOS.undent
    #{token} requires Java 6 like any other IntelliJ-based IDE.
    You can install it with
    brew cask install caskroom/homebrew-versions/java6
    The vendor (JetBrains) doesn't support newer versions of Java (yet)
    due to several critical issues, see details at
    https://intellij-support.jetbrains.com/entries/27854363
  EOS
end
