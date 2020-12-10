cask "signal-beta" do
  version "1.39.2-beta.3"
  sha256 "0a493969d3406fb3cfec26c0c3825ce0db234f47e6c6e487a10b13ed1b88c5b5"

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
