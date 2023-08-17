cask "defold-alpha" do
  version "1.5.0,228a2c1cdf2af38c4821d09ff74878722b3e4f97"
  sha256 "b56264a9383b565590beccb149d009264f69d3b5f30bec68a5c025f084e15e9d"

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
