cask 'intellij-idea-ce13' do
  version '13.1.6'
  sha256 '862b8b4b8474f88e9df930185b035c65b54e71125796f591dea28cff7db929eb'

  url "https://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  homepage 'https://www.jetbrains.com/idea/index.html'
  license :apache

  app 'IntelliJ IDEA 13 CE.app'

  zap :delete => [
                  '~/Library/Application Support/IntelliJIdea13',
                  '~/Library/Preferences/IntelliJIdea13',
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
