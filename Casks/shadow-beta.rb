cask "shadow-beta" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10100"
  sha256 arm:   "bada3126b554f9eeeceae94b56cc233f2b18f0b942fe35583751054c4281f6d3",
         intel: "c63a691f058c9e53d5baa8e1d35fea1ded883610a7414bb7a673ad04675a2e24"

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
