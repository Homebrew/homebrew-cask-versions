cask "whatsapp-legacy" do
  version "2.2412.52"
  sha256 "d1bc56da7f81f2c93003a47dbe8747e0d75bd41e8044e28f357345d83ae1e0d4"

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  name "WhatsApp Legacy"
  desc "Legacy desktop client for WhatsApp"
  homepage "https://www.whatsapp.com/"

  livecheck do
    url "https://web.whatsapp.com/desktop/mac/releases"
    strategy :json do |json|
      json["name"]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "whatsapp",
    "whatsapp-beta",
  ]

  app "WhatsApp.app"

  zap trash: [
    "~/Library/Application Support/WhatsApp",
    "~/Library/Application Support/WhatsApp.ShipIt",
    "~/Library/Caches/WhatsApp",
    "~/Library/Caches/WhatsApp.ShipIt",
    "~/Library/Preferences/ByHost/WhatsApp.ShipIt.*.plist",
    "~/Library/Preferences/WhatsApp-Helper.plist",
    "~/Library/Preferences/WhatsApp.plist",
    "~/Library/Saved Application State/WhatsApp.savedState",
  ]
end
