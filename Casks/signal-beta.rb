cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "5.58.0-beta.1"
  sha256 arm:   "91d6af40ce68c446eaee82d6a2c65557f64074899347239f19da63c5eec861b7",
         intel: "8c76892b51f7056552a79ae0a7e56e16ceeac898ceda2a055b2025e02332d7ec"

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
