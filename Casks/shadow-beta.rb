cask "shadow-beta" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10040"
  sha256 arm:   "3c07d34308bc56738e5a1c810655b6e5c71f12a775500bb471ecc19591ec51cc",
         intel: "ba4c3555e8c516b85245578a4f8646ce74d6d2a6d0ce86c39e038c81f9ef1e0f"

  url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/ShadowBeta-#{version}.dmg"
  name "Shadow Beta"
  desc "Online virtualized computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  app "Shadow Beta.app"

  zap trash: [
    "~/Library/Preferences/com.electron.shadow-beta.plist",
    "~/Library/Application Support/shadow-preprod",
  ]
end
