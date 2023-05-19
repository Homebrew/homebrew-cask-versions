cask "defold-alpha" do
  version "1.4.6,dbe8c8ec83d35778469e84e5ea05ffaf24c81a3a"
  sha256 "ba4c512dbb776ba75cba90a3fa919dd3a8a9431b870eb4fb78b983751d5d29c0"

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
