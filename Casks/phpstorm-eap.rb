cask :v1 => 'phpstorm-eap' do
  version '141.1815'
  sha256 '4e66c2f600b67d9c29614d7ba78b1d3fbf051d21728bb3df00bb39b3548429bf'

  url "https://download.jetbrains.com/webide/PhpStorm-EAP-#{version}.dmg"
  name 'PhpStorm EAP'
  homepage 'https://confluence.jetbrains.com/display/PhpStorm/PhpStorm+Early+Access+Program'
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
