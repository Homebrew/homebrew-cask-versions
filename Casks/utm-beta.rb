cask "utm-beta" do
  version "4.1.3"
  sha256 "85c19de15a19d804d9b0bad421181b3585c82bca95f02b7353e3c11e69c3ceb7"

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
