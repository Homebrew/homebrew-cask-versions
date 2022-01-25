cask "signal-beta" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.30.0-beta.2"

  if Hardware::CPU.intel?
    sha256 "d185e7aa6e6f50a2d1429673af6515666b1b7a1efa549e2c5ede1805bd53c3f7"
  else
    sha256 "1689ca233c9df8a65f91c5116d9c50e45f932e37e6ce62a01d0f747b044b8b9a"
  end

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
