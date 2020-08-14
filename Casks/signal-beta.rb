cask "signal-beta" do
  version "1.35.1-beta.1"
  sha256 "7db510c697eaaaf0cd43e05fd9c755c82f7928a9bfe7e9c1f3ef5aad5327c01c"

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
