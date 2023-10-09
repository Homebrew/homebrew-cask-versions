cask "defold-beta" do
  arch arm: "arm64", intel: "x86_64"

  version "1.6.0,0c82b0d465fc3fa12afe7b67f65f3f1c7c221182"
  sha256 arm:   "235da3fab53e49c402afb08e6f0e4bd9430ed354545643c61afb69def2be9a73",
         intel: "5359612ae38417bafe1b64dc31cadb5518dfee678b9e5e8d71588df81669d907"

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
