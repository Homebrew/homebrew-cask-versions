cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.3.0-beta.2"
  sha256 arm:   "3b0d5a9e81a017a6fc27f0d970ae530c2ef952f9adb299329a8ac15cd4b09c9a",
         intel: "758a453d2823a36d87c7fa44d0b2273e3d6ab9d877b7ef9b8d0698a4f31c656f"

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
