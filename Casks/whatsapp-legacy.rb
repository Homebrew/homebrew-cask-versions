cask "whatsapp-legacy" do
  version "2.2341.18"
  sha256 "b3f9b9e8f7966552545090cd6ad1041758ab1d5522a034b12f32d1d66eb57ce9"

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  name "WhatsApp Legacy"
  desc "Legacy desktop client for WhatsApp"
  homepage "https://www.whatsapp.com/"

  livecheck do
    url "https://web.whatsapp.com/desktop/mac/releases"
    strategy :page_match do |page|
      JSON.parse(page)["name"]
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
