cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "5.63.0-beta.2"
  sha256 arm:   "145103db713490f553d9b1f2d287b3c81f6eca0d183314abad0cf16cf1daf2ee",
         intel: "02ae9cb12c7ba7da5117182d60a23d0db5e9fdc96f4f67af7564b4c2ab2e402e"

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
