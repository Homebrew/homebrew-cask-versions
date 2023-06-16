cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.22.0-beta.3"
  sha256 arm:   "d8715b9ef2d9200954433c453cd45057d4a90d6e5de0ad5166e0936ac344751b",
         intel: "770d3ebfad483c98e6052f8b978022bf9792426fd2aa916c30819e2c9ff63b22"

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
