cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "5.60.0-beta.1"
  sha256 arm:   "ced706c946846add829f3c26e36728d9ea3f9a43f5422d7c53b3210efa102fc2",
         intel: "0bb70b12c28b8121de6a8bf4a5cfb3368bbd6aac67aac5dea5bab87e6770c00b"

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
