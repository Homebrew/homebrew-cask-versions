cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.20.0-beta.2"
  sha256 arm:   "65c4e47958bf452443c04b55ba454c23e635fcaca159c8c1913cbcf9efef3cc9",
         intel: "9cefea990dc415875f64f2d411706b3f0d4553788242510177adb65a7826f423"

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
