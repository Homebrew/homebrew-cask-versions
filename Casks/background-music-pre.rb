cask "background-music-pre" do
  version "0.4.0-SNAPSHOT-c0ab98b"
  sha256 "7fdbcab0542c496cb37f3f958b63d4ec2cd2fe1ce1debbcdf0cf6cb5f1226384"

  url "https://github.com/kyleneideck/BackgroundMusic/releases/download/#{version}/BackgroundMusic-#{version}.pkg"
  appcast "https://github.com/kyleneideck/BackgroundMusic/releases.atom"
  name "Background Music"
  homepage "https://github.com/kyleneideck/BackgroundMusic"

  conflicts_with cask: "background-music"
  depends_on macos: ">= :yosemite"

  pkg "BackgroundMusic-#{version}.pkg"

  uninstall script:     {
    executable: "/Applications/Background Music.app/Contents/Resources/_uninstall-non-interactive.sh",
    sudo:       true,
  },
            launchctl: "com.bearisdriving.BGM.XPCHelper",
            pkgutil:   "com.bearisdriving.BGM",
            quit:      "com.bearisdriving.BGM.App"
end
