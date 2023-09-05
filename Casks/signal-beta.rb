cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.30.0-beta.3"
  sha256 arm:   "5177b361fa1073c6158af1e5f387bbf32dc4e5f7c8a32229cea92bd3842b0f76",
         intel: "245a3cf56d540bd660ba6b8e48daa1198bff67f817fd1383cdc6dd936300b0b6"

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
