cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "5.56.0-beta.1"
  sha256 arm:   "da3ccf3039de3f48ce07701823da218802b8c1be8fee8e71978d6b5c797f95f1",
         intel: "91117ef684ef8985bea49b04f39fcb6ce9873100399c39594fd2a1715c6dfdb8"

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
