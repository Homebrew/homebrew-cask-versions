cask "shadow-beta" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10264"
  sha256 arm:   "3b7a2423af68f664732fb8cd91af9f720691c75bdebf5d3997dfe403180e348c",
         intel: "47f995b45f219e6cd4c68e04e7ec3815cbe2b90ff6abc364663d5b142ed8175c"

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
