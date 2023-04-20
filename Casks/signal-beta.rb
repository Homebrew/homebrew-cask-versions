cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.16.0-beta.1"
  sha256 arm:   "c192c3a5a8ca23e5f1c6f49656ca519314275c1653c045dc696133bf9ecf1490",
         intel: "7e2546648a530c3e0e3dc3ea7563d16d690750de953fa2b30e808a5b62e2de25"

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
