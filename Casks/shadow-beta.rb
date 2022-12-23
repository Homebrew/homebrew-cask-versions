cask "shadow-beta" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10041"
  sha256 arm:   "309af3518a51aa3539e574e7fcdc360d629c0b32bfb05d688a8e9fffebf5526b",
         intel: "5cd4c2fb53a3153b381821972eb65aabab7dcbe54719007d5747bfe675c2a17a"

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
