cask "bitbar" do
  version "2.0.0-beta10"
  sha256 "29e535649b03fbb5bb43fac37bfa62a3074259ab31339e66e534ad938816ae01"

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
