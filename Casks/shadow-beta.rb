cask "shadow-beta" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10189"
  sha256 arm:   "8bbc8dabac42b36b0614cd743793d2dec93038233b8094502023585d8a4358ae",
         intel: "4927fcc7ca84c8138de83650e771e4d1844e40a6ef7180e2b63408b7f470fb54"

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
