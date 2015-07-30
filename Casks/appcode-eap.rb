cask :v1 => 'appcode-eap' do
  version '141.2000.4'
  sha256 '964a077f89c3317116aeb566d398c96754f3eb06474f3c7039974f38197123ac'

  url "https://download.jetbrains.com/objc/AppCode-#{version}.dmg"
  name 'AppCode'
  homepage 'https://confluence.jetbrains.com/display/OBJC/AppCode+EAP'
  license :commercial

  app 'AppCode EAP.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.AppCode-EAP.plist',
                  '~/Library/Preferences/AppCode32',
                  '~/Library/Application Support/AppCode32',
                  '~/Library/Caches/AppCode32',
                  '~/Library/Logs/AppCode32',
                 ]

  conflicts_with :cask => 'appcode-eap-bundled-jdk'

  caveats <<-EOS.undent
    #{token} requires Java 6 like any other IntelliJ-based IDE.
    You can install it with

      brew cask install caskroom/homebrew-versions/java6

    The vendor (JetBrains) doesn't support newer versions of Java (yet)
    due to several critical issues, see details at
    https://intellij-support.jetbrains.com/entries/27854363
  EOS
end
