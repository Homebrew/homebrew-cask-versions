cask "background-music-pre" do
  version "0.4.0-SNAPSHOT-c024116"
  sha256 "91bb417656a8b7c8f493993fd882acd89d8cb933f83da6ba5d88b81b89d6014d"

  url "https://github.com/kyleneideck/BackgroundMusic/releases/download/#{version}/BackgroundMusic-#{version}.unsigned.pkg"
  appcast "https://github.com/kyleneideck/BackgroundMusic/releases.atom"
  name "Background Music"
  homepage "https://github.com/kyleneideck/BackgroundMusic"

  conflicts_with cask: "background-music"
  depends_on macos: ">= :yosemite"

  pkg "BackgroundMusic-#{version}.unsigned.pkg"

  uninstall launchctl: "com.bearisdriving.BGM.XPCHelper",
            pkgutil:   "com.bearisdriving.BGM",
            quit:      "com.bearisdriving.BGM.App",
            script:    "/Applications/Background Music.app/Contents/Resources/_uninstall-non-interactive.sh"
end
