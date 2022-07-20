cask "buckets-beta" do
  version "0.67.0"
  sha256 "f3bac38672f81286b2cc4caa2d62eafb04c71a2718012c10b4cf8d62575f312c"

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
