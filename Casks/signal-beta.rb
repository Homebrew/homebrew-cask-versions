cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.45.0-beta.1"
  sha256 arm:   "04cd7b2300b6f2d3fbefff2c588c9b8ad8736e3a9cd915fe3f161d97e10ceba5",
         intel: "135368103056fd000992348ec0f9e303cb58cf9f3abeefa0159fed9f09f13815"

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
