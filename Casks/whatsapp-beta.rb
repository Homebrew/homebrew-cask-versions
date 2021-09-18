cask "whatsapp-beta" do
  version "2.2137.6"
  sha256 "5a74f04468c21f0333c5102dc46dbb70b0b34a55de66eda278d0259e7c0c347e"

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  name "WhatsApp Beta"
  desc "Desktop client for WhatsApp"
  homepage "https://www.whatsapp.com/"

  livecheck do
    url "https://web.whatsapp.com/desktop-beta/mac/releases"
    regex(/release[._-](\d+(?:\.\d+)*)\.zip/i)
  end

  auto_updates true
  conflicts_with cask: "whatsapp"

  app "WhatsApp.app"

  zap trash: [
    "~/Library/Application Support/WhatsApp",
    "~/Library/Application Support/WhatsApp.ShipIt",
    "~/Library/Caches/WhatsApp",
    "~/Library/Caches/WhatsApp.ShipIt",
    "~/Library/Preferences/ByHost/WhatsApp.ShipIt.*.plist",
    "~/Library/Preferences/WhatsApp.plist",
    "~/Library/Preferences/WhatsApp-Helper.plist",
    "~/Library/Saved Application State/WhatsApp.savedState",
  ]
end
