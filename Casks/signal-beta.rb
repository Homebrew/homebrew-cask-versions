cask "signal-beta" do
  version "1.39.5-beta.1"
  sha256 "83422b516c81def69f56493556d5c281cef1568f8a47aa992d3e7df4901e15f1"

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
