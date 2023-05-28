cask "shadow-beta" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10117"
  sha256 arm:   "54579fc574c42ba408e6f27a5ce0cefe2eda4163951edadda00074db6b4e5f38",
         intel: "02901d0c1b509327cd2c22ca3c82859dba57876203fb28a0b72e87451d81c8c5"

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
