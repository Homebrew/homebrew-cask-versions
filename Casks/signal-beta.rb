cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.23.0-beta.1"
  sha256 arm:   "e0e86a4160bf075cb2d512bebaf4adf933240ecb3811414e10a088d2fe91d89d",
         intel: "c58ca3f2939ab12acbffdd3c179097d66b11b5435dc6d793305821d353862892"

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
