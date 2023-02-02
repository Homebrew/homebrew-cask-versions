cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.5.0-beta.2"
  sha256 arm:   "e81b8256aef5bae6c20a85783f650ef3fafc2f4485526ad0c418724bff509716",
         intel: "672725d048c9d33f0236f535ab40020b7db2ecfdd99065def881dfb3a5492939"

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
