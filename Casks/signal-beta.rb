cask "signal-beta" do
  arch arm: "arm64", intel: "x64"

  version "6.27.0-beta.4"
  sha256 arm:   "7bc53631460d4bc77012d2cf408cffe0ac91e77cf9909f9d58c603aca1d869d3",
         intel: "07abca1437f3de7416280bcacf1ff0212e227054ed0f4f0e3e13ded60d25793f"

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
