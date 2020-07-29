cask "shadow-beta" do
  version :latest
  sha256 :no_check

  url "https://update.shadow.tech/launcher/preprod/mac/ShadowBeta.dmg"
  name "Shadow Beta"
  homepage "https://shadow.tech/"

  app "Shadow Beta.app"

  zap trash: [
    "~/Library/Preferences/com.electron.shadow-beta.plist",
    "~/Library/Application Support/shadow-preprod",
  ]
end
