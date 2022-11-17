cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.0.0-beta.2"
  sha256 arm:   "b64d00eec77ea3e9e598574a7f77472cbec2d8e95ffd729584371a647a1cca66",
         intel: "ac5d86642e53cd4b42a1ed4377880939431cb5acaa6223079ceb626d0cf2b2b3"

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
