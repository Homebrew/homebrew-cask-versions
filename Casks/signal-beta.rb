cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.22.0-beta.2"
  sha256 arm:   "55a780a7a45fd556826871a6867d12ed24ab76235bd07361b8ddd6cc99b33ee2",
         intel: "aa941f89a240f3bbb01312b4e06595a6bf7910e945376a4c44d6e47a4b284c3f"

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
