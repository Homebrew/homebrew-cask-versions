cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.18.0-beta.2"
  sha256 arm:   "41e0612ce89b2565d2959cea4ee5c1ff1fccf7ce83b662c6401f0828c8ce9437",
         intel: "adfb549ab82a4e625a92e67dc5d7831d3b1bb0a9cc0394cbe264d1f1362bedc0"

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
