cask "whatsapp-legacy" do
  version "2.2353.63"
  sha256 "e82824e59d02e91a71a6e71c69ea6d0ddb16e8430f232e7fb6c23915e773c9a9"

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
    "~/Library/Preferences/WhatsApp.plist",
    "~/Library/Preferences/WhatsApp-Helper.plist",
    "~/Library/Saved Application State/WhatsApp.savedState",
  ]
end
