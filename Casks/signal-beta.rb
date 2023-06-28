cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.24.0-beta.1"
  sha256 arm:   "775457d148c81f2ff3c0ec64d02da2f0b146087641b34fe319cf996434a90ff7",
         intel: "848c7a3c9232c4d68e24c181052dd174b9f7b1a2506951239a86227fb5a1ee43"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.dmg"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://github.com/signalapp/Signal-Desktop"
    regex(/^v?(\d+(?:\.\d+)+[._-]beta\.\d+)$/i)
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
