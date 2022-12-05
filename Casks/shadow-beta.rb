cask "shadow-beta" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10012"
  sha256 arm:   "2a32a60afb01394d61cd10258dcff3c71d4c3e6053ac52b52f1325ea1e4d36db",
         intel: "eb4ea2f1cf8611ac42fff1ff277e26f6690292f11b7cf823e9022e57dc08d6be"

  url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/ShadowBeta-#{version}.dmg"
  name "Shadow Beta"
  desc "Online virtualized computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  app "Shadow Beta.app"

  zap trash: [
    "~/Library/Preferences/com.electron.shadow-beta.plist",
    "~/Library/Application Support/shadow-preprod",
  ]
end
