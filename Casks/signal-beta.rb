cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.25.0-beta.1"
  sha256 arm:   "96f30c54667da7163ed35615be2fb7428069f6919d9e72aa860785750aacb9c7",
         intel: "c5a76b844b2c06c551ca9b3c2f0a3d3da5dd8f9514308ae04a7a16ccd0a47164"

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
