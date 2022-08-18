cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "5.56.0-beta.1"

  on_intel do
    sha256 "88e8b8a09963704fe511eaf70c4c26cb7d27578344658de935dfc97432a2ad39"
  end
  on_arm do
    sha256 "da3ccf3039de3f48ce07701823da218802b8c1be8fee8e71978d6b5c797f95f1"
  end

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
