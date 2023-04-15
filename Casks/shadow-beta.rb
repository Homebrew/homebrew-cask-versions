cask "shadow-beta" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10084"
  sha256 arm:   "8124db9ca5a9c2aa9acfc4b9cb88390f1771bd1d262bf470b9656c77e2b3fec8",
         intel: "2807a81c349a61ee42655ad832c5a016205b23ec5d10e6508501c409724b7620"

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
