cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.43.0-beta.1"
  sha256 arm:   "0b0b968ebb65e245a7297316001e21fbec0896b01e316a20e9a4536c08abc1d0",
         intel: "d46ebd94284e9587bd7c53457e53170ce93e43511e628ce29b34d824aaca604f"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.dmg"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://github.com/signalapp/Signal-Desktop"
    regex(/^v?(\d+(?:\.\d+)+[._-]beta\.\d+)$/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
