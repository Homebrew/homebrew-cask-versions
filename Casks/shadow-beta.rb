cask "shadow-beta" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10144"
  sha256 arm:   "fdd48eef678b95636c46505296b942f4d786eee95db3a1bd8e4c0101b714c1c0",
         intel: "540af7a73ce35a29faf74f36333ef76a4077cc621bba76271fe3d9a3d3996455"

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
