cask "shadow-beta" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10162"
  sha256 arm:   "fc0296fcd47358dd8dcd425f46912c54c1ce9aeff36645c26f5b25dd3481a2b7",
         intel: "373a71f81fc3ec7cfd49c553d40b1726dfbd571d71f0fd22d7dc7f12adf4a78a"

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
