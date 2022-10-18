cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "5.63.0-beta.4"
  sha256 arm:   "868ad3aa5706c71d8456c1c61bf59e18c0442da0a16017049c209cc45f621e17",
         intel: "1f0f0d1a03e29afafaf444154b474b0c1118629be4bac88762df810bf45e9f2b"

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
