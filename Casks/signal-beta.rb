cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "5.57.0-beta.1"
  sha256 arm:   "ccbea3f7917ea839d6e20b4d685f7e87fabf392dc385e6b2f7c1ca6c47dd5413",
         intel: "50f981a7e4349675e7ae38670da12176252d520007759b9302dff15f8cbc89fb"

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
