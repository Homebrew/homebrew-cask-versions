cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.5.0-beta.1"
  sha256 arm:   "f973f61dbbb2215e671c991a22d03aca955e782c92d05e0a4768211efc3fe21c",
         intel: "f0a8cf06bc8bc2ed5e969bbc7d27981595a1117ffc489ba917a0573245d6d3ce"

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
