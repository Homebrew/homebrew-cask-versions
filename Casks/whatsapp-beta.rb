cask "whatsapp-beta" do
  version "2.2138.2"
  sha256 "94c5add88ff97fefd0b2d03da3143c7584a7b58a5d80c4caf31ff0aae6f22374"

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
