cask "royal-tsx-beta" do
  version "5.1.1.11"
  sha256 "694cd029557d53781183e69d16a284f7f305157df6eb6c5a769293226c26c6ed"

  url "https://royaltsx-v#{version.major}.royalapps.com/updates/royaltsx_#{version}.dmg"
  name "Royal TSX"
  desc "Remote management solution"
  homepage "https://www.royalapps.com/ts/mac/features"

  livecheck do
    url "https://royaltsx-v#{version.major}.royalapps.com/updates_beta.php"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Royal TSX.app"

  zap trash: [
    "~/Library/Application Support/com.lemonmojo.RoyalTSX.App",
    "~/Library/Application Support/Royal TSX",
    "~/Library/Caches/com.lemonmojo.RoyalTSX.App",
    "~/Library/Preferences/com.lemonmojo.RoyalTSX.App.plist",
  ]
end
