cask "signal-beta" do
  version "1.38.1-beta.2"
  sha256 "e07a496c70bb048917b949c3c68bd2ca188731db1ca86000e68855f309c079e9"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{version}.zip"
  appcast "https://github.com/signalapp/Signal-Desktop/releases.atom"
  name "Signal Beta"
  homepage "https://signal.org/"

  auto_updates true

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
