cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.12.0-beta.1"
  sha256 arm:   "322f3663430610ae7d77e07a9e6a404d2794abc28c72c0c977a3d34411fb0eaa",
         intel: "89b2f145e19527291bf17a81041867d6865b2b296da18716d3e59e0311fa906a"

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
