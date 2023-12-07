cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.42.0-beta.1"
  sha256 arm:   "ea64d2939c063046b54ab1506e1f447dc3c3f043daa9313ab60fa10c69dfdef2",
         intel: "839d215155187c4b5b81b622ee9c917a9e8f37f2236fbc642c8afd893482cfb1"

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
