cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.8.0-beta.1"
  sha256 arm:   "65a2e0d6503534b3ef1b60cbca1d931d5b950e2aa75a837477fcecdf031b3b02",
         intel: "b040a8fb11fbf8b762d88b07f48c75c97acc72aa37772e4f9ebe85742aaa2b51"

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
