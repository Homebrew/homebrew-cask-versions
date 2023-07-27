cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.27.0-beta.3"
  sha256 arm:   "f22a41aceb47e1acc39deea417dd1a2e9c49cd7aaf04a31afdb24e750438b4da",
         intel: "550f4a5da4701345f1ba24383c2393f11ebe9f375fcd9bfe3cfdeb54e31b728a"

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
