cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.11.0-beta.1"
  sha256 arm:   "35392e4cfba822a519105f25b5662db8ae932607fd724946f56ba2df54e97177",
         intel: "e8ae32c92e70b8ece7048c3d83bf2685a65b9e10169bdc6706639c99d798922e"

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
