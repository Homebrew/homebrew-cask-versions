cask "signal-beta" do
  version "5.0.0-beta.3"
  sha256 "72a5a055017b5178af57a1d9068b0795caf53ea79f3eba4a9aee24af5cf70589"

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
