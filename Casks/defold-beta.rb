cask "defold-beta" do
  version :latest
  sha256 :no_check

  url "https://d.defold.com/beta/info.json" do |json_content|
    require "json"
    version_sha = JSON.parse(json_content)["sha1"]
    "https://d.defold.com/archive/beta/#{version_sha}/beta/editor2/Defold-x86_64-darwin.dmg"
  end
  name "Defold"
  desc "Game engine for development of desktop, mobile and web games"
  homepage "https://defold.com/"

  conflicts_with cask: [
    "defold",
    "defold-alpha",
  ]

  app "Defold.app"

  zap trash: [
    "~/Library/Application Support/Defold",
    "~/Library/Caches/com.defold.editor",
    "~/Library/Preferences/com.defold.editor.plist",
    "~/Library/Saved Application State/com.defold.editor.savedState",
  ]
end
