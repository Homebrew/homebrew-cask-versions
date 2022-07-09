cask "signal-beta" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.50.0-beta.1"

  if Hardware::CPU.intel?
    sha256 "5ebb481563fbc9604143881cbba3eeefa589910f981c28db9c27589d50a45b2e"
  else
    sha256 "029686a18c7ac700dca69d08a84ccd6f26dd54c00c87be20a717863b69c9f924"
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
