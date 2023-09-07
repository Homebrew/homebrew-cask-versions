cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.31.0-beta.1"
  sha256 arm:   "2c17db510e57a718b4270dfae1734594e3b37db430742c1f0cadba87a7d1e08e",
         intel: "81d910124b33bd7426d9d958f8121648b5f7de04369770ecf9970c40a60d08d3"

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
