cask "royal-tsx-beta" do
  version "5.0.1.1"
  sha256 "077b6867a090b27f5a4137ca95512cf4c68f35107d691346bfbfed964575daf9"

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
    "~/Library/Application Support/Royal TSX",
    "~/Library/Application Support/com.lemonmojo.RoyalTSX.App",
    "~/Library/Caches/com.lemonmojo.RoyalTSX.App",
    "~/Library/Preferences/com.lemonmojo.RoyalTSX.App.plist",
  ]
end
