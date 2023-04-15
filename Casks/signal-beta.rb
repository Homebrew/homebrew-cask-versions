cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.15.0-beta.1"
  sha256 arm:   "c2f8a2d4712081fafc2825496d0f98dc6b21ae01126cf04bbdb43e15fd6081dc",
         intel: "8ab5e9d54e7016f224465df10d784879ce0e8d6ba8526bf7fcb5944f3ac6b2b2"

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
