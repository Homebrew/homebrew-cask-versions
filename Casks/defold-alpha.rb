cask "defold-alpha" do
  arch arm: "arm64", intel: "x86_64"

  version "1.6.1,7f2db4a8d8ec413fbd8f82bb6ffef0986102c686"
  sha256 arm:   "bda85f4376e0f169a37b2bebc8b6a483c5645b86afac47b4ccbfb2b61eb627a4",
         intel: "ca4f742c2cf8a4f42305270d2739a343a192c01e5603781c9d77ebf14d832976"

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
