# frozen_string_literal: true

cask "whatsapp-beta" do
  version "2.2135.1"
  sha256 "d082d2237792997141295e7c19daee73eff02425ee982a72bb8a5ca9a29a85d2"

  url "https://web.whatsapp.com/desktop-beta/mac/files/release-#{version}.zip"
  name "WhatsApp Beta"
  desc "Desktop client for WhatsApp"
  homepage "https://www.whatsapp.com/"

  app "WhatsApp.app"

  livecheck do
      url "https://web.whatsapp.com/desktop-beta/mac/releases"
      strategy :page_match
      regex(/release-(\d+(?:\.\d+)*)\.zip/i)
    end

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
