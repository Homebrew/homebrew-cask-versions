cask "shadow-beta" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10199"
  sha256 arm:   "13076c4088d5f66aba28535fc659800a231be647ce2168bd0e8e2abd7b31af60",
         intel: "d1cd9d830a43132de6378a97bdde3d321a00e6622c420dd5a86539866e974d2c"

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
