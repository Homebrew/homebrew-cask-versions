cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.4.0-beta.1"
  sha256 arm:   "d1fd00121aa7263214dffed27fc7da57e04768b2d745bf355213a4cd0f9a14bb",
         intel: "50a77f836f7fbd495105e4d6acc290611d85f031270f81457c26c2d309973c5d"

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
