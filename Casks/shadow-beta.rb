cask "shadow-beta" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10136"
  sha256 arm:   "824f7514bf593a74570ee8db77fa2fcf92072aba0a123fefea42521b3e759cd6",
         intel: "2698953869ae51c550a3e3c19870b07fb58b11d4306f912d8db67468cc384b19"

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
