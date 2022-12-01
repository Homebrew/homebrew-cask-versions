cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.0.0-beta.4"
  sha256 arm:   "0dcc5090eff476e1953f26d629257f3a27d819ed7615eaaf1ecb334fc76654a2",
         intel: "c23b10c5e272cda08a0731c1576ff034a7efbc7685916a63b75386dc36b180e3"

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
