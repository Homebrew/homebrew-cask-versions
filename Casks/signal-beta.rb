cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.28.0-beta.2"
  sha256 arm:   "8751488f43e234b8b81e77682fedfdec197f0ad3417e6e6c6681ba468b4db2d5",
         intel: "59a156200178042c681c0ada26d6eafa65733ac93285b53c551209fa1a2133ff"

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
