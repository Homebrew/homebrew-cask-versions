cask "shadow-beta" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10218"
  sha256 arm:   "3c7be778d1c4cb0fce76c0d1d996c70cbbf713113d626de9b44f3fdf13281fc8",
         intel: "94d2223b87cd8c9eecec3b8e477eb4d379e0eaaa9f38d21ec3902dd32bee7391"

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
