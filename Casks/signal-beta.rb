cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.4.0-beta.2"
  sha256 arm:   "31591d714985da62f44e52405bb6819bbf473dade98ad3803991f2ace6ef235e",
         intel: "c24c29d35a3f509e2ca47acc697e5c7aa9c574ab995e9da11265d64165e8b1ea"

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
