cask :v1 => '0xdbe-eap' do
  version '142.4250.1'
  sha256 'f0b3026daaa243ff6ec8fa6ea80f9521dcd8234068f359cf2c72d00b3a705713'

  url "https://download.jetbrains.com/dbe/0xdbe-#{version}.dmg"
  name '0xDBE EAP'
  name '0xDBE'
  homepage 'https://www.jetbrains.com/dbe/eap/'
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
