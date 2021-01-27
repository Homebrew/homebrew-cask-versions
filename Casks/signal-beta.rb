cask "signal-beta" do
  version "1.39.6-beta.1"
  sha256 "7bfd120c1456d5f0b1b4d0188d682141e405b5c07bbf76398bf61a50987817d8"

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
