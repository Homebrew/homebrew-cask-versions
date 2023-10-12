cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.35.0-beta.1"
  sha256 arm:   "9c2bc86759075460c33d2837a84a026f7aa27a9849b3f082a0395f8a8692f564",
         intel: "aea1009335035d66297fda8c1bd6d1d8c89aa74505a47d1596ccd84323060e4c"

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
