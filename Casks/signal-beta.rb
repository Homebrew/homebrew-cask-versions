cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.2.0-beta.1"
  sha256 arm:   "565179b33757c2526e053d0f15c5b51a62ab52cf10f57ab78e2ed040e6674466",
         intel: "1735fe39be6f51089d8de5eaa3518dbc12d7590641dfdc628b0ad53cf256711b"

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
