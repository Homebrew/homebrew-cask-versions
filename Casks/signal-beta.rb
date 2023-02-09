cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.6.0-beta.1"
  sha256 arm:   "aca04cab6697bc1cee1ff12b3a879577ee4ed893b71a2f80c4aee06777ff8e2e",
         intel: "243573ea61d5970c506fa3310b8e16f766b635975a78277cd6b5267f1f240aab"

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
