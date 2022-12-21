cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.2.0-beta.2"
  sha256 arm:   "fcc7d1b4de10deea8a2e5a6da3f0599d7c411bb21170cb051b09faaf22de7c38",
         intel: "d37bdfd3c10e5e478238d24417803d833ee47240c3193260f13b4af18cd92fcc"

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
