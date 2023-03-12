cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.10.0-beta.1"
  sha256 arm:   "9a4c1a3d21f246ca51e37202816c7d4d745678f27b24a6473e8bfff4e8e39919",
         intel: "9289fef8208a2919baa89e5e1527f8048cfec7e4046b37c0fef9b9b02379e88c"

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
