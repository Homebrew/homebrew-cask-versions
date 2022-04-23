cask "signal-beta" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.41.0-beta.1"

  if Hardware::CPU.intel?
    sha256 "519fc2b2e697fed1a8ac65b063a9b037e63518cb62f2bf6cc1007273f2cad1ed"
  else
    sha256 "2a724025b80fa8db5ef5aa2daa4fd7928ee7e7ad39fe045786935d0e45a003e5"
  end

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
