cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.0.0-beta.3"
  sha256 arm:   "20c68f39dffbb6782b598b5a6f1fbe5c65544fcc9d886cb6a4ae01c15d9413e9",
         intel: "d87b64f71e36b75759421cf8d7ecafca8ef5fbdcdf9270a2030d0d02bc4d0837"

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
