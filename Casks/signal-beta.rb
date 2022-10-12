cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "5.63.0-beta.3"
  sha256 arm:   "67f59491273664c4dec7a12a1b7a0a8607d678cf45a44bf95b420a5f1b9e6584",
         intel: "9c4d7734fe06d1c244642fac0fae2a642a85a3520fde58216a812d4e38a3f787"

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
