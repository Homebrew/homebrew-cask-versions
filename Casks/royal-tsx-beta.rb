cask "royal-tsx-beta" do
  version "6.0.0.8"
  sha256 "42e60c70922cfb75c6f6cfe847a3835818a95ceb38786f54519b1830c4002092"

  url "https://royaltsx-v#{version.major}.royalapps.com/updates/royaltsx_#{version}.dmg"
  name "Royal TSX"
  desc "Remote management solution"
  homepage "https://www.royalapps.com/ts/mac/features"

  livecheck do
    url "https://royaltsx-v#{version.major}.royalapps.com/updates_beta.php"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: "royal-tsx"
  depends_on macos: ">= :big_sur"

  app "Royal TSX.app"

  zap trash: [
    "~/Library/Application Support/com.lemonmojo.RoyalTSX.App",
    "~/Library/Application Support/Royal TSX",
    "~/Library/Caches/com.lemonmojo.RoyalTSX.App",
    "~/Library/Preferences/com.lemonmojo.RoyalTSX.App.plist",
  ]
end
