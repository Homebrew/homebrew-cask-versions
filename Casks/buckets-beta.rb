cask "buckets-beta" do
  arch arm: "arm64", intel: "amd64"

  version "0.73.3"
  sha256 arm:   "58adeb682d1eb7e01dab945286af2ac2c9b30a0b60a28af9e442295a045cbbfd",
         intel: "ba5604b49c8fe9aa657ec4f541188bf8a7383cf162650c16bc0205c5eccc0058"

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
