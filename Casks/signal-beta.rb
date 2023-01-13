cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.3.0-beta.1"
  sha256 arm:   "c0118e141688ca75f7527d2f7d77a61aae74910db4cdaa9348507210af9e2221",
         intel: "121c63365f908d88348ebe8a0e3ca1457f6138756a9403ae4e94a0009db40342"

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
