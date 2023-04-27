cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.17.0-beta.1"
  sha256 arm:   "16d522bc22e5ebb009f117daf97dd5a80e5c0f38d966895ee0f9fc19456aab87",
         intel: "1c87fb29b4036cdc7eada54bad7824d6537b30bb97d682ac1df5c89d2709a5a6"

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
