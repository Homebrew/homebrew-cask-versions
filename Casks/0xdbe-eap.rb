cask :v1 => '0xdbe-eap' do
  version '142.5046.5'
  sha256 'bfa0a7b81735a9b595609389794d72a17e09d28f79f67b2a3d48e1c006ac7917'

  url "https://download.jetbrains.com/dbe/0xdbe-#{version}.dmg"
  name '0xDBE EAP'
  name '0xDBE'
  homepage 'https://confluence.jetbrains.com/display/DBE/0xDBE+1.0+EAP'
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
