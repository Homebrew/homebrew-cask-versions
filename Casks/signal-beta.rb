cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.14.0-beta.1"
  sha256 arm:   "dd7b6aafbcd9102bd1a000a402e16b336f96026d3dd39dba8be52e2c0729fa14",
         intel: "2dd2c02a2deefbd478d101c1593e8fb4838ee0581128eb02f31c41553d0a41cb"

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
