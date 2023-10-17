cask "buckets-beta" do
  arch arm: "arm64", intel: "amd64"

  version "0.72.1"
  sha256 arm:   "8849085fd49616291766a40b1fb0de6b9e4d32d4446da95735c9bb3681836681",
         intel: "bc098b54193cde68542ae3522f4b5e3fad4dffd0c8cd6a4e6803feedc80ede8a"

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
