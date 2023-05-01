cask "shadow-beta" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10095"
  sha256 arm:   "311edff7bc7b4ce3776be5611521e8d07c93cbb3e52bac9c5e007a3fea01c32c",
         intel: "3dcab4c768a6f3555ce73140e2b40bd9a2bcef931fbaf197d6a602a79d276512"

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
