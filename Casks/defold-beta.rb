cask "defold-beta" do
  version "1.6.0,930322adb6c9628fecf58b955f3b3f2c40589a2d"
  sha256 "a1f36fb80b7247da17db01eec19376dd9cd24dfdad629bbdc2a6a4c1017caf74"

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
