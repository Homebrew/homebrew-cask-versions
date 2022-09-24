cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "5.61.0-beta.1"
  sha256 arm:   "be0110d6c3a06649b6343bb9aea358cdb003513c569359544c52e480fd3336e1",
         intel: "4757038e3c419fb481c35b566d403c5a31977aa74dabc6c6e5519e7fb75a3598"

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
