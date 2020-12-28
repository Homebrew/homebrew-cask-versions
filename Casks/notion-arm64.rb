cask "notion-arm64" do
  version "2.0.11-arm64"
  sha256 "aed019ddac9fdd72c8595214971366374da66d15e267786ac4f9e9055a4d44ed"

  url "https://desktop-release.notion-static.com/Notion-#{version}.dmg",
      verified: "desktop-release.notion-static.com/"
  name "Notion"
  desc "App to write, plan, collaborate, and get organized"
  homepage "https://www.notion.so/"

  auto_updates true

  app "Notion.app"

  zap trash: [
    "~/Library/Application Support/Notion",
    "~/Library/Caches/notion.id",
    "~/Library/Logs/Notion",
    "~/Library/Preferences/notion.id.helper.plist",
    "~/Library/Preferences/notion.id.plist",
    "~/Library/Saved Application State/notion.id.savedState",
    "~/Library/WebKit/notion.id",
  ]
end
