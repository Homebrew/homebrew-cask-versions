cask :v1 => '0xdbe-eap' do
  version '142.3925.2'
  sha256 '4a65485831acc2f8ff9b04802e212d45f04bae192df13a39af75913ee7d38ff0'

  url "https://download.jetbrains.com/dbe/0xdbe-#{version}.dmg"
  name '0xDBE EAP'
  name '0xDBE'
  homepage 'https://www.jetbrains.com/dbe/'
  license :commercial

  app '0xDBE EAP.app'

  caveats <<-EOS.undent
    #{token} requires Java 6 like any other IntelliJ-based IDE.
    You can install it with

      brew cask install caskroom/homebrew-versions/java6

    The vendor (JetBrains) doesn't support newer versions of Java (yet)
    due to several critical issues, see details at
    https://intellij-support.jetbrains.com/entries/27854363
  EOS
end
