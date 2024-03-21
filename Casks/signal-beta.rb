cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "7.4.0-beta.1"
  sha256 arm:   "bae83df7c7fcdf08248a28797aaee86567f022bbb99e0be3379c08e7759d5ae5",
         intel: "38cc4c624e9f70bc50b1f655aba8245fc2afdbba81c7893b4f3ea1905106a608"

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
