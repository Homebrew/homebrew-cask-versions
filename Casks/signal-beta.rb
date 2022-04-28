cask "signal-beta" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.42.0-beta.1"

  if Hardware::CPU.intel?
    sha256 "b6705e37bc29c8997fe0e8aa9742302f6f63681cf517d85966a1f97477b22933"
  else
    sha256 "2d4247a34c75050d6a05b2ead359ea80bae3f09c62e721e769d7c1c6cb6f014d"
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
