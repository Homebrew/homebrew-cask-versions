cask "telegram-desktop-beta" do
  version "3.5.6"
  sha256 "eb084958a5935aa07170faaf2778e0575c8d33d724aa0f90b23fcd1b609d9ff1"

  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.beta.dmg",
      verified: "updates.tdesktop.com/tmac"
  name "Telegram Desktop"
  desc "Desktop client for Telegram messenger"
  homepage "https://desktop.telegram.org/"

  livecheck do
    url "https://telegram.org/dl/desktop/mac?beta=1"
    strategy :header_match
    regex(/tsetup.(\d+(?:\.\d+)+)\.beta.dmg/i)
  end

  auto_updates true
  conflicts_with cask: "telegram-desktop"
  depends_on macos: ">= :sierra"

  # Renamed to avoid conflict with telegram
  app "Telegram.app", target: "Telegram Desktop.app"

  zap trash: [
    "~/Library/Application Support/Telegram Desktop",
    "~/Library/Preferences/com.tdesktop.Telegram.plist",
    "~/Library/Saved Application State/com.tdesktop.Telegram.savedState",
  ]
end
