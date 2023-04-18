cask "whatsapp-beta" do
  version "2.2318.1"
  sha256 :no_check

  url "https://web.whatsapp.com/desktop-beta/mac/files/WhatsApp-beta.dmg"
  name "WhatsApp Beta"
  desc "Desktop client for WhatsApp"
  homepage "https://www.whatsapp.com/"

  livecheck do
    url "https://web.whatsapp.com/desktop-beta/mac/releases"
    strategy :page_match do |page|
      JSON.parse(page)["name"]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "whatsapp",
    "whatsapp-alpha",
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
