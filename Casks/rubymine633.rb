cask :v1 => 'rubymine633' do
  version '6.3.3'
  sha256 'c79216de02f2564ea60592420342ab9fb5014da7e7c96f92e2856dc49f2090dd'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  name 'RubyMine'
  homepage 'https://confluence.jetbrains.com/display/RUBYDEV/Previous+RubyMine+Releases'
  license :commercial

  app 'RubyMine.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.rubymine.plist',
                  '~/Library/Preferences/RubyMine60',
                  '~/Library/Application Support/RubyMine60',
                  '~/Library/Caches/RubyMine60',
                  '~/Library/Logs/RubyMine60',
                  '/usr/local/bin/mine',
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
