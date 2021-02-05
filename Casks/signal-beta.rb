cask "signal-beta" do
  version "1.40.0-beta.4"
  sha256 "18779a76888fffd8cc1b903f71a88390bc4d34f26b00971c43440b1ccde6f2b0"

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
