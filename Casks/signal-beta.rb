cask "signal-beta" do
  version "5.0.0-beta.1"
  sha256 "68712d87c5e4e8a5246dacc2ab86be501aa1da56ecc308d7eb409a69bb936e98"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{version}.dmg"
  appcast "https://github.com/signalapp/Signal-Desktop/releases.atom"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
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
