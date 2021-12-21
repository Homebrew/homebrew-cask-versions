cask "insomnia-alpha" do
  version "2021.7.3-alpha.0"
  sha256 "6bec889a49d8f46ddd89f783c723f2a385f92e21fa2ddc06325e2a372df014f7"

  url "https://github.com/Kong/insomnia/releases/download/core%40#{version}/Insomnia.Core-#{version}.dmg",
      verified: "github.com/Kong/insomnia/"
  name "Insomnia"
  desc "HTTP and GraphQL Client"
  homepage "https://insomnia.rest/"

  livecheck do
    url "https://github.com/Kong/insomnia/releases"
    strategy :page_match
    regex(/Insomnia[._-]Core[._-](\d+(?:\.\d+)+[._-](?:alpha|beta)[._-]\d*)\.dmg/i)
  end

  auto_updates true
  conflicts_with cask: "insomnia"

  app "Insomnia.app"

  zap trash: [
    "~/Library/Application Support/Insomnia",
    "~/Library/Caches/com.insomnia.app",
    "~/Library/Caches/com.insomnia.app.ShipIt",
    "~/Library/Cookies/com.insomnia.app.binarycookies",
    "~/Library/Preferences/ByHost/com.insomnia.app.ShipIt.*.plist",
    "~/Library/Preferences/com.insomnia.app.helper.plist",
    "~/Library/Preferences/com.insomnia.app.plist",
    "~/Library/Saved Application State/com.insomnia.app.savedState",
  ]
end
