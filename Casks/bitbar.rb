cask "bitbar" do
  version "2.0.0-beta10"
  sha256 "69731c6686e0f2ccc2a3f19dd4e98cca7244e5a859d5326c627875a20220cea5"

  url "https://github.com/matryer/bitbar/releases/download/v#{version}/BitBar-v#{version}.zip"
  appcast "https://github.com/matryer/bitbar/releases.atom"
  name "BitBar"
  desc "Utility to display the output from any script or program in the menu bar"
  homepage "https://github.com/matryer/bitbar/"

  app "BitBar.app"

  zap trash: [
    "~/Library/BitBar Plugins",
    "~/Library/Caches/com.matryer.BitBar",
    "~/Library/Preferences/com.matryer.BitBar.plist",
  ]
end
