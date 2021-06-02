cask "signal-beta" do
  version "5.4.0-beta.3"
  sha256 "f0ef0195e4b0d7c0a5229fc92c0d1883712699692c72cb1f612dbb7c5a7eceb2"

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
