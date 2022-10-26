cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "5.63.0-beta.5"
  sha256 arm:   "70f5136d0ea4c2b250ec2c7d9ea4fc5b3dc7fbe5ea4450c7193e0953c0f97c68",
         intel: "cf416b05841fa732b49d6ac5af8ed7f52caefc3ac84fd09f5081db8d81f04376"

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
