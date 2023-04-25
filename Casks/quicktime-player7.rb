cask "quicktime-player7" do
  version "7.6.6"
  sha256 "1959c0103c8b9c0ffffbbe70c15d08524576481f0a2eb37e36509fe324d16a3e"

  url "https://support.apple.com/downloads/DL923/en_US/QuickTimePlayer#{version}_SnowLeopard.dmg"
  name "QuickTime Player 7"
  desc "Video player"
  homepage "https://support.apple.com/kb/dl923"

  pkg "QuickTimePlayer#{version}_SnowLeopard.pkg"

  uninstall pkgutil: "com.apple.pkg.QuickTimePlayer#{version}_SnowLeopard"

  # No zap stanza required

  caveats do
    discontinued
  end
end
