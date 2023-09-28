cask "defold-alpha" do
  version "1.6.1,4c402bd0dfbac0d65c51f4de1597e46a42ae324e"
  sha256 "137cd2d0843e0b4c645799af368ec391bedad30297226205b2672bd6deebc66a"

  url "https://d.defold.com/archive/alpha/#{version.csv.second}/alpha/editor2/Defold-x86_64-macos.dmg"
  name "Defold"
  desc "Game engine for development of desktop, mobile and web games"
  homepage "https://defold.com/"

  livecheck do
    url "https://d.defold.com/alpha/info.json"
    strategy :page_match do |page|
      version = JSON.parse(page)["version"]
      sha1 = JSON.parse(page)["sha1"]
      next if version.blank? || sha1.blank?

      "#{version},#{sha1}"
    end
  end

  conflicts_with cask: [
    "defold",
    "defold-beta",
  ]

  app "Defold.app"

  zap trash: [
    "~/Library/Application Support/Defold",
    "~/Library/Caches/com.defold.editor",
    "~/Library/Preferences/com.defold.editor.plist",
    "~/Library/Saved Application State/com.defold.editor.savedState",
  ]
end
