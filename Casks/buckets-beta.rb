cask "buckets-beta" do
  version "0.63.2"
  sha256 "e24f2de00a1e5f91ec853f16732a50299b2328dcdbad55b7a896249f752b383a"

  url "https://github.com/buckets/desktop-beta/releases/download/v#{version}/Buckets-Beta-#{version}.dmg",
      verified: "github.com/buckets/desktop-beta/"
  name "Buckets Beta"
  desc "Budgeting tool"
  homepage "https://www.budgetwithbuckets.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Buckets Beta.app"

  zap trash: [
    "~/Library/Application Support/Buckets Beta",
    "~/Library/Preferences/com.onepartrain.buckets.desktopbeta.plist",
  ]
end