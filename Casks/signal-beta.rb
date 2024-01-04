cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.44.0-beta.2"
  sha256 arm:   "b037da0b3dda163a35887f7e930a2da83756a229f5d177a893253f3b99bff6c3",
         intel: "3a28363ecea2e85bb8a6060a56db3fe9ae7d14c2e0af7f835cabdf7f986faf9c"

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
