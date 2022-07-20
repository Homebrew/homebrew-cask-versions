cask "insomnia-alpha" do
  version "2022.5.0-beta.4"
  sha256 "c77d90b05129807d5e11ac3b2cc3b21ba1c51d2d9784937c0eef7703c40a6760"

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
