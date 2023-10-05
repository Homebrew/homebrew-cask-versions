cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.34.0-beta.2"
  sha256 arm:   "b760ea9cf32298665c6226caaa8fff3d99e7f1f74e6ef70eac1d640d72f48839",
         intel: "83807ec74e64d58ef4f1929f251649f40bd6771b920b72c563e30c7eec1c5a68"

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
