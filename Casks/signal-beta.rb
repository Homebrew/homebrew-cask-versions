cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.13.0-beta.1"
  sha256 arm:   "a940eb55a240fa6a7add52bc04fca0656e87f727d25256fb130b769d95aaf9ee",
         intel: "ec41549c9e2b012c5f0222277d9e22c369d39ba648ed342c0dd4f56e6f4983d4"

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
