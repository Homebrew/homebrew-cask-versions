cask "shadow-beta" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10157"
  sha256 arm:   "b03719233488fcdc29fe3a244def25f95906cf5a3790ee28093d1fdce94111e6",
         intel: "3eefc0faf50e4ff0dcc8a11e8714b7e877022387d13da78ccddf8af08505630f"

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
