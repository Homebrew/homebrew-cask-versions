cask 'intellij-idea14' do
  version '14.1.6'
  sha256 '536385a0eba67347842c8df7616e47e9191a50ccf00e39ac5298759509d3ec33'

  url "https://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  homepage 'https://www.jetbrains.com/idea/index.html'
  license :commercial

  app 'IntelliJ IDEA 14.app'

  zap :delete => [
                  '~/Library/Application Support/IntelliJIdea14',
                  '~/Library/Caches/IntelliJIdea14',
                  '~/Library/Logs/IntelliJIdea14',
                  '~/Library/Preferences/IntelliJIdea14',
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
