cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.2.0-beta.3"
  sha256 arm:   "b9c700ecd44829f77fb123a555f77b1c9cf3211e912d9a5ba56f152b9f144f84",
         intel: "b7da6cdb55e87bc25e78869ae2b44fb9e4f3788cbae1980519bd1d3ccc7633f9"

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
