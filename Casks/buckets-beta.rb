cask "buckets-beta" do
  version "0.71.1"
  sha256 "d3d4e9db840f9a99e82ecfa6faa8bf9d9625139fa83341c7bdc61929a49d72b5"

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
