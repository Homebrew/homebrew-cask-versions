cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.20.0-beta.1"
  sha256 arm:   "78d5a5028d38df669e215cb3dbcdd93dd9f955045d5122f4404e71a3489ceef7",
         intel: "ee4b97b0f74bc309edeaa1cb152fb2de09e186fffddb2746857c47b1f474d948"

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
