cask "whatsapp-native" do
  version "2.23.1.75"
  sha256 :no_check

  url "https://web.whatsapp.com/desktop/mac_native/release/"
  name "WhatsApp Beta"
  desc "Native desktop client for WhatsApp"
  homepage "https://faq.whatsapp.com/451924530376167/?cms_platform=web"

  livecheck do
    url :url
    strategy :header_match
    regex(/WhatsApp[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  conflicts_with cask: [
    "whatsapp",
    "whatsapp-beta",
  ]
  depends_on macos: ">= :big_sur"

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
