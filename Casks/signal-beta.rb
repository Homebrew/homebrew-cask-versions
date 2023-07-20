cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.27.0-beta.1"
  sha256 arm:   "8eae0711c889a82484f39cf1f4c329732102e0c313049b1d021226e09e45f07f",
         intel: "dfc219a83b51608c07227e8b96c511eb65e8689527f04800b831ca4d4acc6338"

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
