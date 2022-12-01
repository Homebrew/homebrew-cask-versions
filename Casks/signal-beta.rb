cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.1.0-beta.1"
  sha256 arm:   "46abc0891e3b9931d72ac0fcf69f1293d8dd2c5d0767e1de0fc02d452521bb23",
         intel: "eea0852bb0a7edd7de5a861c23a65414a0a8bd82dc4cb6c46263abe1b6a0f52d"

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
