cask "signal-beta" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.29.0-beta.1"

  if Hardware::CPU.intel?
    sha256 "d1d9c72040157c22eab5b2adca5f681cafac8f6f55a986de0bea24300180a19a"
  else
    sha256 "2307368272e7360b25943499ebfa88c3dc03ca28c9bb4c4e197a64f97ac7b2a1"
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
