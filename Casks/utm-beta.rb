cask "utm-beta" do
  version "4.2.0"
  sha256 "ed788fcdb026e4826f2c54bc6585d699903a74fb5451f16d07aed94167b13d7e"

  url "https://github.com/utmapp/UTM/releases/download/v#{version}/UTM.dmg",
      verified: "github.com/utmapp/UTM/"
  name "UTM"
  desc "Virtual machines UI using QEMU"
  homepage "https://mac.getutm.app/"

  livecheck do
    url "https://github.com/utmapp/UTM/releases?q=prerelease%3Atrue&expanded=true"
    regex(%r{href=["']?[^"' >]*?/tag/\D*?(\d+(?:\.\d+)+)[^"' >]*?["' >]}i)
    strategy :page_match
  end

  conflicts_with cask: "utm"

  app "UTM.app"
  binary "#{appdir}/UTM.app/Contents/MacOS/utmctl"

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
