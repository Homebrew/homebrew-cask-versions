cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.27.0-beta.2"
  sha256 arm:   "12366bdd40e8d89699c595b07fff07f09701c12c6c4fac6b534cd02dfbdedb52",
         intel: "8d35bb30bf63ba71cd87fe08b2d386f9c0a450931b43a73ef4db9759d3c4be74"

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
