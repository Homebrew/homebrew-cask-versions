cask "buckets-beta" do
  arch arm: "arm64", intel: "amd64"

  version "0.73.0"
  sha256 arm:   "06de99e65ed7537b9921897f5a92badd86c3af57a71116d99f8d1099faa1f2c1",
         intel: "2180056f439decede36a3fb59a90da835d78cf25533642028e040f33d9ef3486"

  url "https://github.com/buckets/desktop-beta/releases/download/v#{version}/Buckets-Beta-#{arch}-#{version}.dmg",
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
