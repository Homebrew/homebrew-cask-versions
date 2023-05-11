cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.18.0-beta.1"
  sha256 arm:   "07f76f502abe77cf6d9d5262d40791d8f4ee4211756bb9c3663e3c50b7e314f2",
         intel: "e31bcfe408ac375b6311d0c98b0840c9b839869f095ed71bc306735137b87473"

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
