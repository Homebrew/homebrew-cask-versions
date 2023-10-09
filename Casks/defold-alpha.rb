cask "defold-alpha" do
  arch arm: "arm64", intel: "x86_64"

  version "1.6.1,28012e8f15f41399d9e1f3e568610eb9b0181652"
  sha256 arm:   "90fcabdaf1ecfdd90cb9ef273e68db862cab9a396fd238d4a39a2e7de997ad45",
         intel: "1c2084b105e65a8cd84d3b906f8d14384910bb414b5aae06dd7e687605e3eefe"

  url "https://d.defold.com/archive/alpha/#{version.csv.second}/alpha/editor2/Defold-#{arch}-macos.dmg"
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
