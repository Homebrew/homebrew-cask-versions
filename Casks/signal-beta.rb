cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.21.0-beta.1"
  sha256 arm:   "c00ac1ac4963a684416b9e716592bf518f2c4eb2aa9a558fd3e53c4b08c4bfa3",
         intel: "e55d4156aa5579fd3c1e9610f3bf1bacd27cad09df87c9406a80b345c5b3f195"

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
