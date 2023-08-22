cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.30.0-beta.1"
  sha256 arm:   "7f3e3e7f0ec8617b56542037dc42491951e9d4b8dfcb93c55158a5d03c3a8401",
         intel: "e3f9febf64cb1561241c5a9e8fc4e06762dd14c382281d82373eb15413c9f8cc"

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
