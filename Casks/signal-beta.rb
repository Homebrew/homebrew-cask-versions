cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.40.0-beta.2"
  sha256 arm:   "a58c14a59140b53d9371868e4401e8e22f120aad8fb6a746465ee12f83255cde",
         intel: "735d02fee1c0a73b4f81fc91c4967e6cd4dd118ff431ff40c94ce77a7d0f73e0"

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
