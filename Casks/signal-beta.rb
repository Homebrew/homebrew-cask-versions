cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "5.62.0-beta.1"
  sha256 arm:   "7f89c6f9804cadca427698f9569488f4b0b998981af610ddd9751558e2fac298",
         intel: "a97aad1ec132024798f5f6bf6026045283e9e6792aed1643f60def970e18cbe6"

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
