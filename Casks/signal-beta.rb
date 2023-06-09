cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.21.0-beta.2"
  sha256 arm:   "5016ecb67aef518d641d8b96d55b3b110299edae3db3e4cef77c30f17e620398",
         intel: "71afbeb9c1ce3dfe1227d3a34f4b91fb07dc38e80e0f796d1628dc266ad0246d"

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
