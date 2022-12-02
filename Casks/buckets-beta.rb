cask "buckets-beta" do
  version "0.69.0"
  sha256 "34266eccda6a50634017918d8248515355087a6b5cf6dbc95d6f78c881ae97f3"

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
