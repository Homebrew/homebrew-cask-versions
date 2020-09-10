cask "signal-beta" do
  version "1.36.1-beta.1"
  sha256 "a4b0b7a52fed0cd6e16500bb26547fb80578ee0f9ec7f4c24e96dc3b14960699"

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
