cask 'phpstorm7' do
  version '7.1.4'
  sha256 '618d05d39d8565677cddc63afee0fc9b50431a7efc6da930a18c54831ea102f5'

  url "https://download.jetbrains.com/webide/PhpStorm-#{version}.dmg"
  homepage 'https://www.jetbrains.com/phpstorm/'
  license :commercial

  app 'PhpStorm.app'

  zap :delete => [
                  '~/Library/Application Support/WebIde70',
                  '~/Library/Preferences/WebIde70',
                  '~/Library/Preferences/com.jetbrains.PhpStorm.plist',
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
