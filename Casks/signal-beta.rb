cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "5.63.0-beta.6"
  sha256 arm:   "cef263e72602d5ba5036be438fb5daa94d0fc01f10d6c725889f02b1e73d4050",
         intel: "3ce3f2d3427b143ad4108962f4f96fe7abb7c4a8a79cb943ac196f096a6f6eab"

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
