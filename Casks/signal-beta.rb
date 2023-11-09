cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.39.0-beta.2"
  sha256 arm:   "cea256d9207add5ec26c5a9c0b05fb20d040a380fbda31372c13c1144fe4f7ce",
         intel: "9613dff5d4d53911aa47dbeadc338be0c01801f8b0b59e975792f4f0dff79100"

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
