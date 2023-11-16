cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.40.0-beta.1"
  sha256 arm:   "05c499e8a38a52a6f3b39ba95a2bb35e984a076bcaf6ce39538c2b421def83ce",
         intel: "f5506d6a1d6624e4d568b675d7c19e43f354ebad3d929ed5dbd1a16143b580bb"

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
