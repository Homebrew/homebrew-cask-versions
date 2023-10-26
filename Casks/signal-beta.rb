cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.37.0-beta.1"
  sha256 arm:   "36646420d461e6cebc481e15efb3d95e38ba01376e65219800d4b4c2d33ac3bf",
         intel: "7c2cd6b3718a34ea854077c0ffd445ee2e78cf3f07117be902835943564ef15d"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.dmg"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://github.com/signalapp/Signal-Desktop"
    regex(/^v?(\d+(?:\.\d+)+[._-]beta\.\d+)$/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
