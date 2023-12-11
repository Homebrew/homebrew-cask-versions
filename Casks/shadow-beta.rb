cask "shadow-beta" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10192"
  sha256 arm:   "aa574944f2eba019777e458f79ef301343399d0234d018dac449793644181d6c",
         intel: "45861fd8dd239a384432063dd3284c99d1a675674221d61cb719f11f441b92e2"

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
