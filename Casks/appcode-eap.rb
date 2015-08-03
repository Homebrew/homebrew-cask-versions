cask :v1 => 'appcode-eap' do
  version '141.2263.29'
  sha256 '3459783061f10aff6b7190196a8b8949215d817fbf3c9f3770e8aeb55c1018bf'

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
