cask "insomnia-alpha" do
  version "2021.6.0-alpha.7"
  sha256 "cafff919768d5bdfac75e5100689f5a0876c3477a292574c81a10ba4a86d5f84"

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
