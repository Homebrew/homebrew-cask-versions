cask "signal-beta" do
  version "5.4.0-beta.2"
  sha256 "c42b5cb881ae0746aeb38054f948cecab2bc49d7ff28edec753bb08751e052b8"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{version}.dmg"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://github.com/signalapp/Signal-Desktop"
    strategy :git
    regex(/^v?(\d+(?:\.\d+)*-beta\.\d+)$/i)
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
