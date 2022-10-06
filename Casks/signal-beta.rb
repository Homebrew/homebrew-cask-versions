cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "5.63.0-beta.1"
  sha256 arm:   "4cf9dbdc7a8ee57d2bb75cb3b1f5fe73ef018f042757233cdb53f6b8b9fd19a1",
         intel: "89a1a6f334277bdc7a94392fe40754983bd1b35bfd16adef4741d604efd61453"

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
