cask "shadow-beta" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10261"
  sha256 arm:   "01848832d845ec452f83dc0eaf34b9bfb14d25ee1771af82d5e03a28c2a6a429",
         intel: "8421d5e71733063f091ede31af8d4184ec1f9828892dd4794e2793c787e30a20"

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
