cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.28.0-beta.1"
  sha256 arm:   "d68b534adcfc39b10d6c60ca9103c0f4894a0da3333735778dcfbf5eb62532e1",
         intel: "330d8f9aba7cb884154a42e0d1b2710096b13067380c9e9d4ccb4abe13b44389"

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
