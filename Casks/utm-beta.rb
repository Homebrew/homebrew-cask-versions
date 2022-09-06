cask "utm-beta" do
  version "4.0.3"
  sha256 "46cc1eb83736a429bd2c7cc756ae049fa7a110e6cec235ee684f542001be23e6"

  url "https://github.com/utmapp/UTM/releases/download/v#{version}/UTM.dmg",
      verified: "github.com/utmapp/UTM/"
  name "UTM"
  desc "Virtual machines UI using QEMU"
  homepage "https://mac.getutm.app/"

  conflicts_with cask: "utm"

  app "UTM.app"

  uninstall quit: "com.utmapp.UTM"

  zap trash: [
    "~/Library/Application Scripts/com.utmapp.QEMUHelper",
    "~/Library/Application Scripts/com.utmapp.UTM",
    "~/Library/Containers/com.utmapp.QEMUHelper",
    "~/Library/Containers/com.utmapp.UTM",
    "~/Library/Group Containers/*.com.utmapp.UTM",
    "~/Library/Preferences/com.utmapp.UTM.plist",
    "~/Library/Saved Application State/com.utmapp.UTM.savedState",
  ]
end
