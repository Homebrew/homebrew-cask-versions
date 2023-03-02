cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.9.0-beta.1"
  sha256 arm:   "45ab8b5cdde4e371ba4e1611282162148f9e3a853e28d23540585d69ec51317d",
         intel: "2d34d741d7b05c26b27f4c4ec13d6116e062df42f71708ae73f6b19fff806ee8"

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
