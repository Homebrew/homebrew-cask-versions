cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "5.59.0-beta.1"
  sha256 arm:   "fcb12c0b50d7c0ee5ffbb68b1fb101d6ff1869503d57240726feb957235edd22",
         intel: "f1a0582c8711ab4b7218ccc90ff2d5f9164323a5f2d33982a39f7ebc4beb9909"

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
