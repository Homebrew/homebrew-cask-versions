cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.26.0-beta.1"
  sha256 arm:   "ba571908e4241953005fe38f1df3e115564b201adf3508cd505655e3b39cd85e",
         intel: "bbd073995cce9f3793ee8335ff5a26d10f5a6fdb53e0277e9b690b5e966776b3"

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
