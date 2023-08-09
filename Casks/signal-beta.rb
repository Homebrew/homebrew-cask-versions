cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.29.0-beta.1"
  sha256 arm:   "22ef8ac99a5cdedd37c5657b28bb19c8dd94dcb6e5c6ad5a7fd015d4844812fa",
         intel: "395270531c0e37df58ed06f98044f008f77f380faa4a7df43fcb80f89f1e5ce6"

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
