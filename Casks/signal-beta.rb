cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.19.0-beta.1"
  sha256 arm:   "d29987cf86dffd7b1422ead368f6b42669067ab8cb1a647f0943bf58bbdad656",
         intel: "c85a7da74802c9b41cba3da524d34b995ffefbdfd0ef62d8724c600c726f2a16"

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
