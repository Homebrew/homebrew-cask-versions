cask "shadow-beta" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10225"
  sha256 arm:   "91bc6e1407359464d7e2fe6de7bb62954763ea32c655f29f4aba4bb79f0a92d4",
         intel: "cd020535dc763eea669e1d5ab1ba2d1d7c4facd82a2e68ecda77e485dca30bbf"

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
