cask "defold-beta" do
  version "1.5.0,3945ac1dc91f48a928f1b91f9d9bbb170e6aeac5"
  sha256 "ef453a34de814051a65d522e2f106bc95941c81695d88e32298b5d8c0a2c9734"

  url "https://d.defold.com/archive/beta/#{version.csv.second}/beta/editor2/Defold-x86_64-macos.dmg"
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
