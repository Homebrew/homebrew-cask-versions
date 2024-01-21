cask "shadow-beta" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10205"
  sha256 arm:   "cba7ee3334ffa32dccfd3fb5a375bdb6a4aaeb4f99adbad195d0066a59f71701",
         intel: "a9088e319ec92f94711129ec662b4bfe212dd22a492df67a5c9e1299388511ab"

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
