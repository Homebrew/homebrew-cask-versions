cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.31.0-beta.2"
  sha256 arm:   "008a5aba83b1b0cf10954c68ae2955ba8f84afe72d8233373821b1c48fc86d7f",
         intel: "b845f3b7f714cccfa55879f5314117bfbaa9e3e58f9e2b7cd1136b530fc682d5"

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
