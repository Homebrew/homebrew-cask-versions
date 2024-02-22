cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "7.0.0-beta.2"
  sha256 arm:   "5fe2a4abc71d2d979bead610235380d7ff21540611752f463a41dba997c62d0d",
         intel: "7cd166233512ea21271ce9c50a4ed41ace8022f7f0ac26511ccea63c6f0e8cb7"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.dmg"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://github.com/signalapp/Signal-Desktop"
    regex(/^v?(\d+(?:\.\d+)+[._-]beta\.\d+)$/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
