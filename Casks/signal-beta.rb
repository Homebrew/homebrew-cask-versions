cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.30.0-beta.2"
  sha256 arm:   "be9adff9790284d1da07ea39c1084cc36cc5a2db4e84109cbcd8e3c88d00b66d",
         intel: "8511354d5145d46d2d9cd871c6471db3fcef976a959032600fb13c7d9ffc5c7a"

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
