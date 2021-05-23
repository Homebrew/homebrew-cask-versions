cask "royal-tsx-beta" do
  version "5.0.0.18"
  sha256 "8c2aad10ff166e8f2962d0b8e62ec38a39176ce5cbf0d9733c6aaa023c23d34d"

  url "https://royaltsx-v5.royalapps.com/updates/royaltsx_#{version}.dmg"
  name "Royal TSX"
  desc "Powerful Connection Management"
  homepage "https://www.royalapps.com/ts/mac/features"

  livecheck do
    url "https://royaltsx-v#{version.major}.royalapps.com/updates_beta.php"
    strategy :sparkle
  end

  auto_updates true

  app "Royal TSX.app"
end
