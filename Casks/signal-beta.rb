cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.7.0-beta.1"
  sha256 arm:   "aaf5be40eaa9abeb016858c969d672170549aa2bae3ef4c004215911c55dcaad",
         intel: "925740729b8c97e65b58fd1dd04253951fc98b5a020ae40d68895cf66c8c8d6b"

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
