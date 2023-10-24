cask "shadow-beta" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10175"
  sha256 arm:   "fda5af6b0b07c680441ad34635a0c7d9640f5423da6f2f4e4e22ed909219e787",
         intel: "c86975d0d3fc52644f89aca3060fba0868d9ccaf2583d31f174359dc5dee277e"

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
    "~/Library/Preferences/com.electron.shadow-beta.plist",
    "~/Library/Application Support/shadow-preprod",
  ]
end
