cask "defold-beta" do
  arch arm: "arm64", intel: "x86_64"

  version "1.6.1,1d6568311bbf02f2e0c834809708a654d7b73561"
  sha256 arm:   "86bcf14c6e242dd9152fc395f5920ef9ebd0e9a29ebe7363078a52822742372b",
         intel: "22c5a7d848e92432b414447f8c78babc21ba4a4ad1d692af73c5fe79b99c74e8"

  url "https://d.defold.com/archive/beta/#{version.csv.second}/beta/editor2/Defold-#{arch}-macos.dmg"
  name "Defold"
  desc "Game engine for development of desktop, mobile and web games"
  homepage "https://defold.com/"

  livecheck do
    url "https://d.defold.com/beta/info.json"
    strategy :page_match do |page|
      version = JSON.parse(page)["version"]
      sha1 = JSON.parse(page)["sha1"]
      next if version.blank? || sha1.blank?

      "#{version},#{sha1}"
    end
  end

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
