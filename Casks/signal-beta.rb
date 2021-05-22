cask "signal-beta" do
  version "5.3.0-beta.2"
  sha256 "bee7a245a0f199dad5010b02d4ff33a1e9be34268340e5bd2268e576c6d119ea"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{version}.dmg"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://github.com/signalapp/Signal-Desktop"
    strategy :git
    regex(/^v?(\d+(?:\.\d+)*-beta\.\d+)$/i)
  end

  auto_updates true

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
