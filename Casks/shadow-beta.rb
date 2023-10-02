cask "shadow-beta" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10163"
  sha256 arm:   "032cac7627994db6c106bfb413ae9738d89ba35207651d08cd07e1b9c5f9378a",
         intel: "e5a82beaa8002a3b5851f1f9475609693f9e805f37023b85061d311d79df254c"

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
