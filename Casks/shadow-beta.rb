cask "shadow-beta" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10244"
  sha256 arm:   "ecc20a8e7442cde3647e91eae5bededd63c1def4a1fe806e6b58b384287b0be0",
         intel: "a058bc14a125bad7a05a98732a7a583cf321ea2d9eb37875363b4d1309e4bb38"

  url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/ShadowPCBeta-#{version}.dmg"
  name "Shadow PC Beta"
  desc "Online virtualized computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  app "Shadow PC Beta.app"

  zap trash: [
    "~/Library/Application Support/shadow-preprod",
    "~/Library/Preferences/com.electron.shadow-beta.plist",
  ]
end
